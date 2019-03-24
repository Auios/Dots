#pragma once

#include "Pnt.bi"

type Dot
    as Pnt position
    as integer v
    
    declare constructor()
    declare constructor(x as integer, y as integer, v as integer = 0)
    declare sub setPosition(x as integer, y as integer)
end type

constructor Dot()
end constructor

constructor Dot(x as integer, y as integer, v as integer = 0)
    this.setPosition(x, y)
    this.v = v
end constructor

sub Dot.setPosition(x as integer, y as integer)
    this.position.set(x, y)
end sub
