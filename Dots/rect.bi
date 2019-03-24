#pragma once

#include "pnt.bi"

type Rect
    as Pnt position
    as Pnt size
    
    declare constructor()
    declare constructor(x as single, y as single, w as single, h as single)
    declare function get_nw() as Rect
    declare function get_ne() as Rect
    declare function get_sw() as Rect
    declare function get_se() as Rect
    declare sub set(x as single, y as single, w as single, h as single)
    declare sub offSet(x as single, y as single)
    declare sub setSize(w as single, h as single, center as boolean = false)
    declare function intersects(r as Rect ptr) as boolean
    declare function contains(p as Pnt ptr) as boolean
    declare function toString() as string
end type

constructor Rect()
end constructor

constructor Rect(x as single, y as single, w as single, h as single)
    this.set(x, y, w, h)
end constructor

function Rect.get_nw() as Rect
    return Rect(this.position.x, this.position.y, this.size.x/2, this.size.y/2)
end function

function Rect.get_ne() as Rect
    return Rect(this.position.x + this.size.x/2, this.position.y, this.size.x/2, this.size.y/2)
end function

function Rect.get_sw() as Rect
    return Rect(this.position.x, this.position.y + this.size.y/2, this.size.x/2, this.size.y/2)
end function

function Rect.get_se() as Rect
    return Rect(this.position.x + this.size.x/2, this.position.y + this.size.y/2, this.size.x/2, this.size.y/2)
end function

sub Rect.set(x as single, y as single, w as single, h as single)
    this.position.set(x, y)
    this.size.set(w, h)
end sub

sub Rect.offSet(x as single, y as single)
    this.position.offSet(x, y)
end sub

sub Rect.setSize(w as single, h as single, center as boolean = false)
    if(center) then
        
    else
        this.size = Pnt(w,h)
    end if
end sub

function Rect.intersects(r as Rect ptr) as boolean
    if(this.position.x > r->position.x + r->size.x OR r->position.x > this.position.x + this.size.x) then return false
    if(this.position.y < r->position.y + r->size.y OR r->position.y < this.position.y + this.size.y) then return false
    return true
end function

function Rect.contains(p as Pnt ptr) as boolean
    if(p->x < this.position.x OR p->x > this.position.x + this.size.x) then return false
    if(p->y < this.position.y OR p->y > this.position.y + this.size.y) then return false
    return true
end function

function Rect.toString() as string
    return this.position.toString() & "-(" & this.position.x + this.size.x & "," & this.position.y + this.size.y & ")"
end function
