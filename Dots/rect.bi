#pragma once

#include "pnt.bi"

type Rect
    as Pnt topLeft
    as Pnt botRight
    
    declare constructor()
    declare constructor(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    declare sub set(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    declare sub offSet(x as integer, y as integer)
    declare function intersects(r as Rect ptr) as boolean
    declare function contains(p as Pnt ptr) as boolean
end type

constructor Rect()
end constructor

constructor Rect(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    this.set(x0, y0, x1, y1)
end constructor

sub Rect.set(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    this.topLeft.set(x0, y0)
    this.botRight.set(x1, y1)
end sub

sub Rect.offSet(x as integer, y as integer)
    this.topLeft.offSet(x, y)
    this.botRight.offSet(x, y)
end sub

function Rect.intersects(r as Rect ptr) as boolean
    if(this.topLeft.x > r->botRight.x OR r->topLeft.x > this.botRight.x) then return false
    if(this.topLeft.y < r->botRight.y OR r->topLeft.y < this.botRight.y) then return false
    return true
end function

function Rect.contains(p as Pnt ptr) as boolean
    if(p->x < this.topLeft.x OR p->x > this.botRight.x) then return false
    if(p->y < this.topLeft.y OR p->y > this.botRight.y) then return false
    return true
end function
