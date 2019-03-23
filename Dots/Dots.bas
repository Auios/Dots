#include "fbgfx.bi"
#include "color.bi"

#include "sys.bi"

#include "mouse.bi"
#include "stopwatch.bi"
#include "quadtree.bi"

#define BB 8 'Border buffer
#define CS 8 'Char size
#define CLEARCOLOR color.slateGray
#define TEXTCOLOR color.dimGray
#define BORDERCOLOR color.dimGray
#define BACKGROUNDCOLOR color.silver

using fb

randomize(1)

sub clearScreen(wdth as long, hght as long, c as uinteger = rgb(0,0,0))
    line(0,0)-(wdth, hght), c, bf
end sub

sub renderForm(x as integer, y as integer, w as integer, h as integer)
    
end sub

sub renderPoint(p as Pnt ptr, r as integer = 1, c as uinteger = rgb(255, 255, 255))
    circle(p->x, p->y), r, c
end sub

sub renderRect(r as Rect ptr, c as uinteger = rgb(255, 255 ,255))
    line(r->position.x, r->position.y)-(r->position.x + r->size.x, r->position.y + r->size.y),c,b
end sub

sub renderQuadTree(qt as QuadTree ptr)
    if(qt = 0) then return
    renderRect(@qt->boundary)
    renderQuadTree(qt->nw)
    renderQuadTree(qt->ne)
    renderQuadTree(qt->sw)
    renderQuadTree(qt->se)
    
    dim as integer i = 0
    while(i < qt->count)
        renderPoint(@qt->n[i].p, 2, rgb(255,221,0))
        i+=1
    wend
end sub

sub renderQTDebug(x as integer, y as integer, qt as QuadTree ptr)
    dim as integer wdth = 31
    dim as integer hght = 7
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),BACKGROUNDCOLOR,bf
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),BORDERCOLOR,b
    x+=BB/2
    y+=BB/2
    draw string(x, y), "Depth: " & qt->depth, TEXTCOLOR:y+=CS
    draw string(x, y), "Boundary: " & qt->boundary.toString(), TEXTCOLOR:y+=CS
    draw string(x, y), "Count: " & qt->count, TEXTCOLOR:y+=CS
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

function main(argc as integer, argv as zstring ptr ptr) as integer
    screenRes(800, 600, 32, 1, 0)
    
    dim as QuadTree qt = QuadTree(Rect(0, 0, 200, 200), 4, 0)
    dim as QuadTree ptr qt_dbg = @qt
    dim as integer globalCount = 0
    
    dim as StopWatch wtch
    
    dim as Mouse ms
    dim as EVENT e
    dim as boolean runApp = true
    
    while(runApp)
        ms.update()
        if(screenEvent(@e)) then
            select case e.type
            case EVENT_KEY_PRESS
                if(e.scancode = SC_ESCAPE) then runApp = false
                if(e.scancode = SC_A) then
                    dim as Pnt p = Pnt(200*rnd(), 200*rnd())
                    if(qt.insert(p)) then globalCount+=1
                end if
                if(e.scancode = SC_R) then qt_dbg = @qt
                if(qt_dbg->divided) then
                    if(e.scancode = SC_1) then qt_dbg = qt_dbg->nw
                    if(e.scancode = SC_2) then qt_dbg = qt_dbg->ne
                    if(e.scancode = SC_3) then qt_dbg = qt_dbg->sw
                    if(e.scancode = SC_4) then qt_dbg = qt_dbg->se
                else
                    if(e.scancode = SC_D) then qt_dbg->subDivide()
                end if
                
            case EVENT_MOUSE_BUTTON_PRESS
                if(e.button = BUTTON_LEFT) then
                    dim as Pnt p = Pnt(ms.x, ms.y)
                    wtch.reset()
                    wtch.start()
                    if(qt.insert(p)) then globalCount+=1
                    wtch.stop()
                end if
                
                if(e.button = BUTTON_RIGHT) then
                    dim as Pnt p = Pnt(ms.x, ms.y)
                    
                end if
            end select
        end if
        
        screenLock()
        clearScreen(800, 600, CLEARCOLOR)
        renderQuadTree(@qt)
        renderRect(@qt_dbg->boundary, rgb(82, 216, 136))
        renderQTDebug(300, 15, qt_dbg)
        renderMouseDebug(300, 90, @ms)
        screenUnlock()
        
        sleep(1, 1)
    wend
    
    qt.destroy()
    
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))