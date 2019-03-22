#include "fbgfx.bi"
#include "quadtree.bi"
#include "sys.bi"

using fb

randomize(1)

sub renderPoint(p as Pnt ptr, r as integer = 1, c as uinteger = rgb(255, 255, 255))
    circle(p->x, p->y), r, c
end sub

sub renderRect(r as Rect ptr, c as uinteger = rgb(255, 255 ,255))
    line(r->topLeft.x, r->topLeft.y)-(r->botRight.x, r->botRIght.y),c,b
    line(r->topLeft.x, r->topLeft.y)-(r->botRight.x, r->botRIght.y),c
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
        renderPoint(@qt->n[i].p, 3, rgb(255,221,0))
        i+=1
    wend
end sub

sub renderQTDebug(x as integer, y as integer, qt as QuadTree ptr)
    draw string(x, y), "Depth: " & qt->depth:y+=10
    draw string(x, y), "Boundary: " & qt->boundary.toString():y+=10
    draw string(x, y), "Count: " & qt->count:y+=10
    draw string(x, y), "ne: " & qt->ne:y+=10
    draw string(x, y), "nw: " & qt->nw:y+=10
    draw string(x, y), "se: " & qt->se:y+=10
    draw string(x, y), "sw: " & qt->sw:y+=10
end sub

function main(argc as integer, argv as zstring ptr ptr) as integer
    screenRes(800, 600, 32, 1, 0)
    
    dim as QuadTree qt = QuadTree(Rect(0, 0, 200, 200), 4, 0)
    dim as QuadTree ptr qt_dbg = @qt
    dim as integer globalCount = 0
    
    if(true) then
        for i as integer = 0 to 19
            dim as Pnt p = Pnt(200*rnd(), 200*rnd())
            if(qt.insert(p)) then globalCount+=1
        next i
    end if
    
    dim as EVENT e
    dim as boolean runApp = true
    while(runApp)
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
            end select
        end if
        
        'screenLock()
        cls()
        renderQuadTree(@qt)
        renderRect(@qt_dbg->boundary, rgb(82, 216, 136))
        draw string(10, 300), str(globalCount)
        renderQTDebug(300, 15, qt_dbg)
        'screenUnlock()
        
        sleep(1, 1)
    wend
    
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))