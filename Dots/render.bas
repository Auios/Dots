#include "color.bi"
#include "pnt.bi"
#include "rect.bi"
#include "form.bi"

#include "quadtree.bi"
#include "mouse.bi"

#MACRO clearScreen(_w, _h, _c)
line(0,0)-((_w),(_h)),(_c),bf
#ENDMACRO

sub renderPoint(p as Pnt ptr, r as integer = 1, c as uinteger = rgb(255, 255, 255))
    circle(p->x, p->y), r, c
end sub

sub renderRect(r as Rect ptr, c as uinteger = rgb(255, 255 ,255))
    #define _p r->position
    #define _s r->size
    line((_p).x, (_p).y)-step((_s).x, (_s).y ),c,b
end sub

sub renderQuadTree(qt as QuadTree ptr, dotClr as uinteger, renderQT as boolean = false)
    if(renderQT) then renderRect(@qt->boundary, rgb(255, 255, 255))
    if(qt->divided) then
        renderQuadTree(qt->nw, dotClr, renderQT)
        renderQuadTree(qt->ne, dotClr, renderQT)
        renderQuadTree(qt->sw, dotClr, renderQT)
        renderQuadTree(qt->se, dotClr, renderQT)
    end if
    
    dim as integer i = 0
    while(i < qt->count)
        renderPoint(@qt->n[i].p, 2, dotClr)
        i+=1
    wend
end sub

sub renderQTDebug(f as Form ptr, qt as QuadTree ptr)
    renderForm(f)
    fPrint(f, "Count(total): " & qt_getCount(qt))
    fPrint(f, "Count(local): " & qt->count)
    fPrint(f, "Depth: " & qt->depth)
    fPrint(f, "Boundary: " & toString(@qt->boundary))
    fPrint(f, "parent: " & qt->parent)
    fPrint(f, "ne: " & qt->ne)
    fPrint(f, "nw: " & qt->nw)
    fPrint(f, "se: " & qt->se)
    fPrint(f, "sw: " & qt->sw)
end sub

sub renderMouseDebug(f as Form ptr, ms as Mouse ptr)
    renderForm(f)
    fPrint(f, "State: " & ms->state)
    fPrint(f, "Buttons: " & ms->buttons)
    fPrint(f, "Wheel: " & ms->wheel)
    fPrint(f, "Clip: " & ms->clip)
    fPrint(f, "Position: (" & ms->x & "," & ms->y & ")")
end sub
