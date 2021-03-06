#include "pnt.bi"
#include "crt/stdio.bi"

'function pnt_create(x as integer, y as integer) as Pnt
'    return type<Pnt>(x,y)
'end function



'sub pnt_set(p as Pnt ptr, x as integer, y as integer)
'    p->x = x
'    p->y = y
'end sub

sub pnt_offset(p as Pnt ptr, dx as integer, dy as integer)
    p->x+=dx
    p->y+=dy
end sub

function toString overload(p as Pnt ptr) as string
    dim as zstring ptr result
    sprintf(result, "(%i,%i)", p->x, p->y)
    return *result
end function
