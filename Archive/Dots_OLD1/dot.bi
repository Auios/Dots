#pragma once

#include "entity.bi"

type dot extends entity
    declare function setPosition(x as single, y as single) as boolean
end type

function dot.setPosition(x as single, y as single) as boolean
    this.position.set(x, y)
    return true
end function
