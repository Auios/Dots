#include "fbgfx.bi"
#include "crt/stdio.bi"
#include "quadtree.bi"

using fb

sub echo(s as string)
    printf(s & !"\n")
end sub

sub renderPoint(p as Pnt ptr, r as integer = 1, c as uinteger = rgb(255, 255, 255))
    circle(p->x, p->y), r, c
end sub

sub renderRect(r as Rect ptr, c as uinteger = rgb(255, 255 ,255))
    line(r->topLeft.x, r->topLeft.y)-(r->botRight.x, r->botRIght.y),c,b
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
        renderPoint(@qt->n[i].p, 3)
        i+=1
    wend
end sub

function main(argc as integer, argv as zstring ptr ptr) as integer
    screenRes(800, 600, 32, 1, 0)
    dim as QuadTree qt = QuadTree(Rect(0, 0, 200, 200), 4)
    
    'for i as integer = 0 to 100
    '    dim as Pnt p = Pnt(200*rnd(), 200*rnd())
    '    qt.insert(p)
    'next i
    
    dim as EVENT e
    dim as boolean runApp = true
    while(runApp)
        if(screenEvent(@e)) then
            select case e.type
            case EVENT_KEY_PRESS
                if(e.scancode = SC_ESCAPE) then runApp = false
                if(e.scancode = SC_A) then
                    dim as Pnt p = Pnt(200*rnd(), 200*rnd())
                    qt.insert(p)
                end if
            end select
        end if
        
        screenLock()
        cls()
        renderQuadTree(@qt)
        screenUnlock()
        
        sleep(1, 1)
    wend
    
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))