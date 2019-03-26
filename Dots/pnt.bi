#pragma once

type Pnt
    as integer x
    as integer y
end type

declare function createPnt(x as integer, y as integer) as Pnt
'declare sub setPnt(p as Pnt ptr, x as integer, y as integer)
declare sub offsetPnt(p as Pnt ptr, dx as integer, dy as integer)
declare function toString overload(p as Pnt ptr) as string

#MACRO setPnt(_p, _x, _y)
(_p)->x=(_x):(_p)->y=(_y)
#ENDMACRO