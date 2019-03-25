#include "rect.bi"

#include "crt/stdio.bi"

function createRect(x as integer, y as integer, w as integer, h as integer) as Rect
    return type<Rect>(type<Pnt>(x,y),type<Pnt>(w,h))
end function

function rectGetNW(r as Rect ptr) as Rect
    return createRect(r->position.x, r->position.y, r->size.x\2, r->size.y\2)
end function

function rectGetNE(r as Rect ptr) as Rect
    dim as integer halfSizeX = r->size.x\2
    return createRect(r->position.x + halfSizeX, r->position.y, halfSizeX, r->size.y\2)
end function

function rectGetSW(r as Rect ptr) as Rect
    dim as integer halfSizeY = r->size.y\2
    return createRect(r->position.x, r->position.y + halfSizeY, r->size.x\2, halfSizeY)
end function

function rectGetSE(r as Rect ptr) as Rect
    dim as integer halfSizeX = r->size.x\2
    dim as integer halfSizeY = r->size.y\2
    return createRect(r->position.x + halfSizeX, r->position.y + halfSizeY, halfSizeX, halfSizeY)
end function

sub setRect(r as Rect ptr, x as integer, y as integer, w as integer, h as integer)
    setPnt(@r->position, x, y)
end sub

sub offsetRect(r as Rect ptr, dx as integer, dy as integer)
    offsetPnt(@r->position, dx, dy)
end sub

function rectIntersects(r1 as Rect ptr, r2 as Rect ptr) as boolean
    if(r1->position.x > r2->position.x + r2->size.x OR r2->position.x > r1->position.x + r1->size.x) then return false
    if(r1->position.y < r2->position.y + r2->size.y OR r2->position.y < r1->position.y + r1->size.y) then return false
    return true
end function

function rectContains(r as Rect ptr, p as Pnt ptr) as boolean
    if(p->x < r->position.x OR p->x > r->position.x + r->size.x) then return false
    if(p->y < r->position.y OR p->y > r->position.y + r->size.y) then return false
    return true
end function

function toString overload(r as Rect ptr) as string
    dim as zstring ptr result
    sprintf(result, "(%i,%i)-(%i,%i)", r->position.x, r->position.y, r->position.x + r->size.x, r->position.y + r->size.y)
    return *result
end function
