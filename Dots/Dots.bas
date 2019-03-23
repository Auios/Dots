#include "fbgfx.bi"

#include "sys.bi"

#include "mouse.bi"
#include "stopwatch.bi"
#include "quadtree.bi"

'Border buffer
#define BB 8
'Char size
#define CS 8

using fb

randomize(1)

enum color
    black =         rgb(0, 0, 0)
    darkGray =      rgb(100, 100, 100)
    gray =          rgb(128, 128, 128)
    lightGray =     rgb(200, 200, 200)
    
    white =         rgb(255, 255, 255)
    red =           rgb(255, 0, 0)
    green =         rgb(255, 0, 0)
    blue =          rgb(0, 0, 255)
    yellow =        rgb(255, 255, 0)
    cyan =          rgb(0, 255, 255)
    magenta =       rgb(255, 0, 255)
    
    darkRed =       rgb(200, 100, 100)
    darkGreen =     rgb(100, 200, 100)
    darkBlue =      rgb(100, 100, 200)
    darkYellow =    rgb(200, 200, 100)
    darkCyan =      rgb(100, 200, 200)
    darkMagenta =   rgb(200, 100, 200)
    
end enum

sub clearScreen(wdth as long, hght as long, c as uinteger = color.black)
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
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),color.lightGray,bf
    line(x,y)-(x+wdth*CS+BB, y+hght*CS+BB),color.darkGray,b
    x+=BB/2
    y+=BB/2
    draw string(x, y), "Depth: " & qt->depth, color.darkGray:y+=CS
    draw string(x, y), "Boundary: " & qt->boundary.toString(), color.darkGray:y+=CS
    draw string(x, y), "Count: " & qt->count, color.darkGray:y+=CS
    draw string(x, y), "ne: " & qt->ne, color.darkGray:y+=CS
    draw string(x, y), "nw: " & qt->nw, color.darkGray:y+=CS
    draw string(x, y), "se: " & qt->se, color.darkGray:y+=CS
    draw string(x, y), "sw: " & qt->sw, color.darkGray:y+=CS
end sub

sub renderMouseDebug(x as integer, y as integer, ms as Mouse ptr)
    dim as integer wdth = 21
    dim as integer hght = 5
    line(x,y)-(x+wdth*CS+bb, y+hght*CS+bb),color.lightGray,bf
    line(x,y)-(x+wdth*CS+bb, y+hght*CS+bb),color.darkGray,b
    x+=bb/2
    y+=bb/2
    draw string(x, y), "State: " & ms->state, color.darkGray:y+=8
    draw string(x, y), "Buttons: " & ms->buttons, color.darkGray:y+=8
    draw string(x, y), "Wheel: " & ms->wheel, color.darkGray:y+=8
    draw string(x, y), "Clip: " & ms->clip, color.darkGray:y+=8
    draw string(x, y), "Position: (" & ms->x & "," & ms->y & ")", color.darkGray:y+=8
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
        clearScreen(800, 600, color.gray)
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