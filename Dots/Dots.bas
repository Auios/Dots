#define fbc -gen gcc -O 3

#undef BOOLEAN
#undef TRUE
#undef FALSE
#define BOOLEAN UBYTE
#define TRUE 1
#define FALSE 0
#define isFalse( _F ) ((_F)=FALSE)

#include "fbgfx.bi"
#include "color.bi"

#include "sys.bas"

#include "pnt.bas"
#include "rect.bas"
#include "mouse.bas"
#include "stopwatch.bas"
#include "quadtree.bas"
#include "dot.bas"

#define QT_SIZE 256
#define QT_CAP 8

#define BB 8 'Border buffer
#define CS 8 'Char size
#define CLEARCOLOR color.slateGray
#define TEXTCOLOR color.dimGray
#define BORDERCOLOR color.dimGray
#define BACKGROUNDCOLOR color.silver
#define DOTCOLOR color.yellow

using fb

randomize(1)

sub displayInstructions()
    echo("A - Spam single dot in the corner")
    echo("S - Spam 10 dots in the corner")
    echo("D - Spam 100 dots in the corner")
    echo("Q - Spam 1000 dots randomly")
    echo("W - Spam 10000 Dots randomly")
    echo("")
    echo("C - Reset the QuadTree from the root down")
    echo("")
    echo("Left click - Spawn dot at cursor")
    echo("Right click - rapidly spawn dots at cursor")
    echo("Mouse wheel - zoom in/out")
    echo("")
    echo("1 - Select north west quadtree")
    echo("2 - Select north east quadtree")
    echo("3 - Select south west quadtree")
    echo("4 - Select south east quadtree")
    echo("")
    echo("Backspace - go up a parent")
    echo("R - Go to root quadtree")
    echo("")
    echo("Escape - Exit application")
end sub

sub clearScreen(wdth as long, hght as long, c as uinteger = rgb(0,0,0))
    line(0,0)-(wdth, hght), c, bf
end sub

sub renderPoint(p as Pnt ptr, r as integer = 1, zoom as single = 1, c as uinteger = rgb(255, 255, 255))
    circle(p->x * zoom, p->y * zoom), r, c
end sub

sub renderRect(r as Rect ptr, zoom as single = 1, c as uinteger = rgb(255, 255 ,255))
    #define _p r->position
    #define _s r->size
    line( _p.x*zoom , _p.y*zoom )-step( _s.x*zoom , _s.y*zoom ),c,b
end sub

sub renderQuadTree(qt as QuadTree ptr, zoom as single = 1, renderQT as boolean = false)
    if(qt = 0) then return
    if(renderQT) then renderRect(@qt->boundary, zoom)
    renderQuadTree(qt->nw, zoom, renderQT)
    renderQuadTree(qt->ne, zoom, renderQT)
    renderQuadTree(qt->sw, zoom, renderQT)
    renderQuadTree(qt->se, zoom, renderQT)
    
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
    x+=BB\2
    y+=BB\2
    draw string(x, y), "Count(total): " & qt_getCount(qt), TEXTCOLOR:y+=CS
    draw string(x, y), "Count(local): " & qt->count, TEXTCOLOR:y+=CS
    draw string(x, y), "Depth: " & qt->depth, TEXTCOLOR:y+=CS
    draw string(x, y), "Boundary: " & toString(@qt->boundary), TEXTCOLOR:y+=CS
    draw string(x, y), "parent: " & qt->parent, TEXTCOLOR:y+=CS
    draw string(x, y), "ne: " & qt->ne, TEXTCOLOR:y+=CS
    draw string(x, y), "nw: " & qt->nw, TEXTCOLOR:y+=CS
    draw string(x, y), "se: " & qt->se, TEXTCOLOR:y+=CS
    draw string(x, y), "sw: " & qt->sw, TEXTCOLOR:y+=CS
end sub

sub renderMouseDebug(x as integer, y as integer, ms as Mouse ptr)
    dim as integer wdth = 21
    dim as integer hght = 5
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),BACKGROUNDCOLOR,bf
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),BORDERCOLOR,b
    x+=BB\2
    y+=BB\2
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
        added+=qt_insert(qt, qtn_create(createPnt(iif(w,w*rnd()+x,x),iif(h,h*rnd()+y,y)),0))
        'added+=iif(qt_insert(qt, Pnt(iif(w,w*rnd()+x,x),iif(h,h*rnd()+y,y))),1,0)
    next i
    return added
end function

function main(argc as integer, argv as zstring ptr ptr) as integer
    screenRes(800, 600, 32, 1, 0)
    dim as any ptr scrnBuff = screenPtr()
    
    displayInstructions()
    
    dim as QuadTree qt = qt_create(createRect(0, 0, QT_SIZE, QT_SIZE), QT_CAP, 0)
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
    
    'globalCount+=spamDots(@qt, 100000, 0, 0, QT_SIZE, QT_SIZE)
    
    ' ===== Main loop =====
    while(runApp)
        sw_start(@w_loop)
        
        ' ===== Updates =====
        if(ms_new.state = 0) then
            ms = ms_new
            'zoom+=ms.dWheel
        end if
        updateMouse(@ms_new)
        
        ' ===== Events ======
        if(screenEvent(@e)) then
            select case e.type
            ' ===== Key press =====
            case EVENT_KEY_PRESS
                ' ===== ESCAPE - close application =====
                if(e.scancode = SC_ESCAPE) then runApp = false
                
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
                
                ' ===== A - Spam dot in corner =====
                if(e.scancode = SC_A) then globalCount+=spamDots(@qt, 1)
                
                ' ===== S - Spam dots in corner =====
                if(e.scancode = SC_S) then globalCount+=spamDots(@qt, 10)
                
                ' ===== D - Spam dots in corner =====
                if(e.scancode = SC_D) then globalCount+=spamDots(@qt, 100)
                
                ' ===== Q - Spam dots randomly=====
                if(e.scancode = SC_Q) then globalCount+=spamDots(@qt, 1000, 0, 0, QT_SIZE, QT_SIZE)
                
                ' ===== W - Spam dots randomly=====
                if(e.scancode = SC_W) then globalCount+=spamDots(@qt, 10000, 0, 0, QT_SIZE, QT_SIZE)
                
                ' ===== C - Clear =====
                if(e.scancode = SC_C) then
                    qt_reset(@qt)
                    globalCount = 0
                end if
                
            ' ===== Mouse =====
            case EVENT_MOUSE_BUTTON_PRESS
                ' ===== Left button - Add dot where mouse is =====
                if(e.button = BUTTON_LEFT) then
                    sw_start(@w_insert)
                    globalCount+=qt_insert(@qt, qtn_create(type<Pnt>(ms.x \ zoom, ms.y \ zoom)))
                    sw_stop(@w_insert)
                end if
            
            case EVENT_MOUSE_WHEEL
                zoom += e.z-oldWheel
                oldWheel = e.z
            end select
        end if
        
        if(ms.buttons = 2) then
            dim as Pnt p = type<Pnt>(ms.x, ms.y)
            sw_start(@w_insert)
            globalCount+=qt_insert(@qt, qtn_create(p))
            sw_stop(@w_insert)
        end if
        
        ' ===== Rendering =====
        screenLock()
        clearScreen(800, 600, CLEARCOLOR)
        
        sw_start(@w_qtRender)
        renderQuadTree(@qt, zoom, true)
        sw_stop(@w_qtRender)
        
        renderRect(@qt_dbg->boundary, zoom, rgb(82, 216, 136))
        renderQTDebug(300, 15, qt_dbg)
        renderMouseDebug(300, 200, @ms)
        draw string(10, 292), "globalCount: " & globalCount
        draw string(10, 300), "w_loop: " & sw_get(@w_loop)
        draw string(10, 308), "w_insert: " & sw_get(@w_insert)
        draw string(10, 316), "w_qtRender: " & sw_get(@w_qtRender)
        draw string(10, 324), "zoom: " & zoom
        draw string(10, 332), "wheel: " & e.z
        draw string(10, 340), "oldWheel: " & oldWheel
        screenUnlock()
        
        sw_stop(@w_loop)
        sleep(1, 1)
    wend
    
    qt_delete(@qt)
    
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))