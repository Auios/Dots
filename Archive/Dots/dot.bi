#pragma once

#include "Pnt.bi"

type Dot
    as Pnt position
    as integer v
end type

declare function dot_create(p as Pnt, v as integer = 0) as Dot
'declare sub dot_setPosition(d as Dot ptr, x as integer, y as integer)
declare function toString overload(d as Dot ptr) as string

#MACRO dot_setPosition(_d, _x, _y)
pnt_set((_d)->position, (_x),(_y))
#ENDMACRO
