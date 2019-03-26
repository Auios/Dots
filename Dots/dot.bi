#pragma once

#include "Pnt.bi"

type Dot
    as Pnt position
    as integer v
end type

declare function dot_create(x as integer, y as integer, v as integer = 0) as Dot