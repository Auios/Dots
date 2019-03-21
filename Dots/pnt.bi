#pragma once

type Pnt
    as integer x
    as integer y
    
    declare constructor()
    declare constructor(x as integer, y as integer)
    declare sub set(x as integer, y as integer)
    declare sub offSet(x as integer, y as integer)
end type

constructor Pnt()
end constructor

constructor Pnt(x as integer, y as integer)
    this.set(x, y)
end constructor

sub Pnt.set(x as integer, y as integer)
    this.x = x
    this.y = y
end sub

sub Pnt.offSet(x as integer, y as integer)
    this.x+=x
    this.y+=y
end sub
