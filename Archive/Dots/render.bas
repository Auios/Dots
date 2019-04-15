#include "color.bi"
#include "pnt.bi"
#include "rect.bi"
#include "form.bi"
#include "dot.bi"

#include "quadtree.bi"
#include "mouse.bi"

#MACRO clearScreen(_w, _h, _c)
line(0,0)-((_w),(_h)),(_c),bf
#ENDMACRO

sub pnt_render(p as Pnt ptr, r as integer = 1, c as uinteger = rgb(255, 255, 255))
    circle(p->x, p->y), r, c
end sub

sub renderDots(d as Dot ptr, count as integer, dotClr as uinteger)
    for i as integer = 0 to count-1
        pnt_render(@d[i].position, 2, dotClr)
    next i
end sub

sub rect_render(r as Rect ptr, c as uinteger = rgb(255, 255 ,255))
    #define _p r->position
    #define _s r->size
    line((_p).x, (_p).y)-step((_s).x, (_s).y ),c,b
end sub

sub qt_render(qt as QuadTree ptr, dotClr as uinteger, renderDot as boolean = false, renderQT as boolean = false)
    if(renderDot ANDALSO renderQT) then
        if(renderQT) then rect_render(@qt->boundary, rgb(255, 255, 255))
        if(qt->divided) then
            qt_render(qt->nw, dotClr, renderDot, renderQT)
            qt_render(qt->ne, dotClr, renderDot, renderQT)
            qt_render(qt->sw, dotClr, renderDot, renderQT)
            qt_render(qt->se, dotClr, renderDot, renderQT)
        end if
        
        if(renderDot) then
            for i as integer = 0 to qt->count-1
                pnt_render(@qt->n[i].p, 2, dotClr)
            next i
        end if
    end if
end sub

sub form_qtDebug(f as Form ptr, qt as QuadTree ptr)
    form_render(f)
    form_print(f, "Count(total): " & qt_getCount(qt))
    form_print(f, "Count(local): " & qt->count)
    form_print(f, "Depth: " & qt->depth)
    form_print(f, "Boundary: " & toString(@qt->boundary))
    form_print(f, "parent: " & qt->parent)
    form_print(f, "ne: " & qt->ne)
    form_print(f, "nw: " & qt->nw)
    form_print(f, "se: " & qt->se)
    form_print(f, "sw: " & qt->sw)
end sub

sub form_mouseDebug(f as Form ptr, ms as Mouse ptr)
    form_render(f)
    form_print(f, "State: " & ms->state)
    form_print(f, "Buttons: " & ms->buttons)
    form_print(f, "Wheel: " & ms->wheel)
    form_print(f, "Clip: " & ms->clip)
    form_print(f, "Position: (" & ms->x & "," & ms->y & ")")
end sub
