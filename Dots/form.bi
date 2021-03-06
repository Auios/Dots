#pragma once

#include "rect.bi"

type Form
    as Rect area
    as uinteger bckClr
    as uinteger borClr
    as uinteger txtClr
    as integer margin
    as integer currentLine
end type

declare function form_create(x as integer, y as integer, w as integer,_
    h as integer,bckClr as uinteger = rgb(200, 200, 200), borClr as uinteger = rgb(100, 100, 100), txtClr as uinteger = rgb(100, 100, 100)) as Form
declare sub form_setPosition(f as Form ptr, x as integer, y as integer)
declare sub form_setSize(f as Form ptr, w as integer, h as integer)
declare sub form_render(f as Form ptr)
declare sub form_print(f as Form ptr, txt as string)