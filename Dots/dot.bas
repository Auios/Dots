#include "dot.bi"

function dot_create(x as integer, y as integer, v as integer = 0) as Dot
    dim as Dot d = any
    d.position = type<Pnt>(x,y)
    d.v = v
    return d
end function

#MACRO dot_setPos(_d, _x, _y)
pnt_setPos((_d)->position, (_x),(_y))
#ENDMACRO
