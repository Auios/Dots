#include "fbgfx.bi"
#include "pnt.bi"
#include "rect.bi"
#include "color.bi"
#include "sys.bi"
#include "mouse.bi"
#include "stopwatch.bi"
#include "quadtree.bi"
#include "dot.bi"

#define QT_SIZE 200
#define QT_CAP 5

#define BB 8 'Border buffer
#define CS 8 'Char size
#define CLEARCOLOR color.slateGray
#define TEXTCOLOR color.dimGray
#define BORDERCOLOR color.dimGray
#define BACKGROUNDCOLOR color.silver
#define DOTCOLOR color.yellow

using fb

randomize(1)

sub clearScreen(wdth as long, hght as long, c as uinteger = rgb(0,0,0))
    line(0,0)-(wdth, hght), c, bf
end sub

sub renderForm(x as integer, y as integer, w as integer, h as integer)
    
end sub

sub renderPoint(p as Pnt ptr, r as integer = 1, zoom as single = 1, c as uinteger = rgb(255, 255, 255))
    circle(p->x * zoom, p->y * zoom), r, c
end sub

sub renderRect(r as Rect ptr, zoom as single = 1, c as uinteger = rgb(255, 255 ,255))
    line(r->position.x * zoom, r->position.y * zoom)-((r->position.x + r->size.x) * zoom, (r->position.y + r->size.y) * zoom),c,b
end sub

sub renderQuadTree(qt as QuadTree ptr, zoom as single = 1, dotsOnly as boolean = false)
    if(qt = 0) then return
    if(NOT dotsOnly) then renderRect(@qt->boundary, zoom)
    renderQuadTree(qt->nw, zoom, dotsOnly)
    renderQuadTree(qt->ne, zoom, dotsOnly)
    renderQuadTree(qt->sw, zoom, dotsOnly)
    renderQuadTree(qt->se, zoom, dotsOnly)
    
    dim as integer i = 0
    while(i < qt->count)
        renderPoint(@qt->n[i].p, 2, zoom, DOTCOLOR)
        i+=1
    wend
end sub

sub renderQTDebug(x as integer, y as integer, qt as QuadTree ptr)
    dim as integer wdth = 31
    dim as integer hght = 9
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),BACKGROUNDCOLOR,bf
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),BORDERCOLOR,b
    x+=BB/2
    y+=BB/2
    draw string(x, y), "Count(total): " & qt->totalCount(), TEXTCOLOR:y+=CS
    draw string(x, y), "Count(local): " & qt->count, TEXTCOLOR:y+=CS
    draw string(x, y), "Depth: " & qt->depth, TEXTCOLOR:y+=CS
    draw string(x, y), "Boundary: " & qt->boundary.toString(), TEXTCOLOR:y+=CS
    draw string(x, y), "parent: " & qt->parent, TEXTCOLOR:y+=CS
    draw string(x, y), "ne: " & qt->ne, TEXTCOLOR:y+=CS
    draw string(x, y), "nw: " & qt->nw, TEXTCOLOR:y+=CS
    draw string(x, y), "se: " & qt->se, TEXTCOLOR:y+=CS
    draw string(x, y), "sw: " & qt->sw, TEXTCOLOR:y+=CS
end sub

sub renderMouseDebug(x as integer, y as integer, ms as Mouse ptr)
    dim as integer wdth = 21
    dim as integer hght = 5
    line(x,y)-(x+wdth*CS+bb, y+hght*CS+bb),BACKGROUNDCOLOR,bf
    line(x,y)-(x+wdth*CS+bb, y+hght*CS+bb),BORDERCOLOR,b
    x+=bb/2
    y+=bb/2
    draw string(x, y), "State: " & ms->state, TEXTCOLOR:y+=8
    draw string(x, y), "Buttons: " & ms->buttons, TEXTCOLOR:y+=8
    draw string(x, y), "Wheel: " & ms->wheel, TEXTCOLOR:y+=8
    draw string(x, y), "Clip: " & ms->clip, TEXTCOLOR:y+=8
    draw string(x, y), "Position: (" & ms->x & "," & ms->y & ")", TEXTCOLOR:y+=8
end sub

sub buildQT(qt as QuadTree ptr, d as Dot ptr, size as integer)
    
end sub

function spamDots(qt as QuadTree ptr, count as integer, x as integer = 0, y as integer = 0, w as integer = 0, h as integer = 0) as integer
    dim as integer added
    for i as integer = 0 to count-1
        added+=iif(qt->insert(Pnt(iif(w,w*rnd()+x,x),iif(h,h*rnd()+y,y))),1,0)
    next i
    return added
end function

function main(argc as integer, argv as zstring ptr ptr) as integer
    screenRes(800, 600, 32, 1, 0)
    
    dim as QuadTree qt = QuadTree(Rect(0, 0, QT_SIZE, QT_SIZE), QT_CAP, 0)
    dim as QuadTree ptr qt_dbg = @qt
    dim as integer globalCount = 0
    dim as integer oldWheel
    dim as integer zoom = 1
    
    dim as StopWatch w_loop
    dim as StopWatch w_insert
    dim as StopWatch w_qtRender
    
    dim as Mouse ms_new, ms
    dim as EVENT e
    dim as boolean runApp = true
    
    'globalCount+=spamDots(@qt, 100)
    
    ' ===== Main loop =====
    while(runApp)
        w_loop.start()
        
        ' ===== Updates =====
        if(ms_new.state = 0) then
            ms = ms_new
            'zoom+=ms.dWheel
        end if
        ms_new.update()
        
        ' ===== Events ======
        if(screenEvent(@e)) then
            select case e.type
            ' ===== Key press =====
            case EVENT_KEY_PRESS
                ' ===== ESCAPE - close application =====
                if(e.scancode = SC_ESCAPE) then runApp = false
                
                ' ===== A - Add single random dot =====
                if(e.scancode = SC_A) then
                    dim as Pnt p = Pnt(200*rnd(), 200*rnd())
                    if(qt.insert(p)) then globalCount+=1
                end if
                
                ' ===== R =====
                if(e.scancode = SC_R) then qt_dbg = @qt
                
                ' ===== 1 - 4 - Step into children =====
                if(qt_dbg->divided) then
                    if(e.scancode = SC_1) then qt_dbg = qt_dbg->nw
                    if(e.scancode = SC_2) then qt_dbg = qt_dbg->ne
                    if(e.scancode = SC_3) then qt_dbg = qt_dbg->sw
                    if(e.scancode = SC_4) then qt_dbg = qt_dbg->se
                end if
                
                if(e.scancode = SC_BACKSPACE AND qt_dbg->parent <> 0) then qt_dbg = qt_dbg->parent
                
                ' ===== S - Spam dots in corner =====
                if(e.scancode = SC_S) then globalCount+=spamDots(@qt, 100)
                
                ' ===== D - Spam dots randomly=====
                if(e.scancode = SC_D) then globalCount+=spamDots(@qt, 250, 0, 0, 200, 200)
                
                ' ===== C - Clear =====
                if(e.scancode = SC_C) then
                    qt.reset()
                    globalCount = qt.count
                end if
                
            ' ===== Mouse =====
            case EVENT_MOUSE_BUTTON_PRESS
                ' ===== Left button - Add dot where mouse is =====
                if(e.button = BUTTON_LEFT) then
                    dim as Pnt p = Pnt(ms.x, ms.y)
                    w_insert.start()
                    if(qt.insert(p)) then globalCount+=1
                    w_insert.stop()
                end if
            
            case EVENT_MOUSE_WHEEL
                zoom += e.z-oldWheel
                oldWheel = e.z
            end select
        end if
        
        if(ms.buttons = 2) then
            dim as Pnt p = Pnt(ms.x, ms.y)
            w_insert.start()
            if(qt.insert(p)) then globalCount+=1
            w_insert.stop()
        end if
        
        ' ===== Rendering =====
        screenLock()
        clearScreen(800, 600, CLEARCOLOR)
        
        w_qtRender.start()
        renderQuadTree(@qt, zoom, false)
        w_qtRender.stop()
        
        renderRect(@qt_dbg->boundary, zoom, rgb(82, 216, 136))
        renderQTDebug(300, 15, qt_dbg)
        renderMouseDebug(300, 200, @ms)
        draw string(10, 300), "w_loop: " & w_loop.get()
        draw string(10, 308), "w_insert: " & w_insert.get()
        draw string(10, 316), "w_qtRender: " & w_qtRender.get()
        draw string(10, 324), "zoom: " & zoom
        draw string(10, 332), "wheel: " & e.z
        draw string(10, 340), "oldWheel: " & oldWheel
        screenUnlock()
        
        w_loop.stop()
        sleep(1, 1)
    wend
    
    qt.cleanup()
    
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))