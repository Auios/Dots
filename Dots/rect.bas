#include "rect.bi"

constructor Rect()
end constructor

constructor Rect(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    this.set(x0, y0, x1, y1)
end constructor

sub Rect.set(x0 as integer, y0 as integer, x1 as integer, y1 as integer)
    this.topLeft.x = x0
    this.topLeft.y = y0
    this.botRight.x = x1
    this.botRight.y = y1
end sub

function Rect.intersects(r as Rect) as boolean
    if(this.topLeft.x > r.botRight.x OR r.topLeft.x > this.botRight.x) then return false
    if(this.topLeft.y < r.botRight.y OR r.topLeft.y < this.botRight.y) then return false
    return true
end function

function Rect.inBoundary(p as Pnt) as boolean
    if(p.x < this.topLeft.x OR p.x > this.botRight.x) then return false
    if(p.y < this.topLeft.y OR p.y > this.botRight.y) then return false
    return true
end function
