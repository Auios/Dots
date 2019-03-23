#include "fbgfx.bi"

#include "sys.bi"

#include "quadtree.bi"
#include "mouse.bi"

using fb

randomize(1)

sub clearScreen(wdth as long, hght as long, c as uinteger = rgb(0, 0, 0))
    line(0,0)-(wdth, hght), c, bf
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
    dim as uinteger light = rgb(200, 200, 200)
    dim as uinteger dark = rgb(100, 100, 100)
    dim as integer bb = 8 ' Border buffer
    dim as integer wdth = 32
    dim as integer hght = 7
    line(x,y)-(x+wdth*8+bb, y+hght*8+bb),light,bf
    line(x,y)-(x+wdth*8+bb, y+hght*8+bb),dark,b
    x+=bb/2
    y+=bb/2
    draw string(x, y), "Depth: " & qt->depth, dark:y+=8
    draw string(x, y), "Boundary: " & qt->boundary.toString(), dark:y+=8
    draw string(x, y), "Count: " & qt->count, dark:y+=8
    draw string(x, y), "ne: " & qt->ne, dark:y+=8
    draw string(x, y), "nw: " & qt->nw, dark:y+=8
    draw string(x, y), "se: " & qt->se, dark:y+=8
    draw string(x, y), "sw: " & qt->sw, dark:y+=8
end sub

function main(argc as integer, argv as zstring ptr ptr) as integer
    screenRes(800, 600, 32, 1, 0)
    
    dim as QuadTree qt = QuadTree(Rect(0, 0, 200, 200), 4, 0)
    dim as QuadTree ptr qt_dbg = @qt
    dim as integer globalCount = 0
    
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
                    if(qt.insert(p)) then globalCount+=1
                end if
            end select
        end if
        
        screenLock()
        clearScreen(800, 600, rgb(128, 128, 128))
        renderQuadTree(@qt)
        renderRect(@qt_dbg->boundary, rgb(82, 216, 136))
        draw string(10, 300), str(globalCount)
        renderQTDebug(300, 15, qt_dbg)
        draw string(10, 310), str(ms.x) & ", " & str(ms.y)
        screenUnlock()
        
        sleep(1, 1)
    wend
    
    qt.destroy()
    
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))