#pragma once

#include "pnt.bi"

type Rect
    as Pnt topLeft
    as Pnt botRight
    
    declare constructor()
    declare constructor(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    declare function get_nw() as Rect
    declare function get_ne() as Rect
    declare function get_sw() as Rect
    declare function get_se() as Rect
    declare sub set(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    declare sub offSet(x as integer, y as integer)
    declare function intersects(r as Rect ptr) as boolean
    declare function contains(p as Pnt ptr) as boolean
    declare function toString() as string
end type

constructor Rect()
end constructor

constructor Rect(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    this.set(x0, y0, x1, y1)
end constructor

function Rect.get_nw() as Rect
    return Rect(this.topLeft.x, this.topLeft.y, this.botRight.x/2, this.botRight.y/2)
end function

function Rect.get_ne() as Rect
    return Rect(this.botRight.x/2, this.topLeft.y, this.botRight.x, this.botRight.y/2)
end function

function Rect.get_sw() as Rect
    return Rect(this.topLeft.x, this.botRight.y/2, this.botRight.x/2, this.botRight.y)
end function

function Rect.get_se() as Rect
    return Rect(this.botRight.x/2, this.botRight.y/2, this.botRight.x, this.botRight.y)
end function

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

function Rect.toString() as string
    return this.topLeft.toString() & "-" & this.botRight.toString()
end function
