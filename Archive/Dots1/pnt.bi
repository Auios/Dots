#pragma once

type Pnt
    as integer x
    as integer y
end type

'declare function pnt_create(x as integer, y as integer) as Pnt
'declare sub pnt_set(p as Pnt ptr, x as integer, y as integer)
declare sub pnt_offset(p as Pnt ptr, dx as integer, dy as integer)
declare function toString overload(p as Pnt ptr) as string

#MACRO pnt_create(_x, _y)
type<Pnt>((_x),(_y))
#ENDMACRO

#MACRO pnt_set(_p, _x, _y)
(_p)->x=(_x):(_p)->y=(_y)
#ENDMACRO