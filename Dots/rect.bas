#include "rect.bi"
#include "crt/stdio.bi"

function rect_create(x as integer, y as integer, w as integer, h as integer) as Rect
    return type<Rect>(type<Pnt>(x,y),type<Pnt>(w,h))
end function

function rect_getNW(r as Rect ptr) as Rect
    return rect_create(r->position.x, r->position.y, r->size.x\2, r->size.y\2)
end function

function rect_getNE(r as Rect ptr) as Rect
    dim as integer halfSizeX = r->size.x\2
    return rect_create(r->position.x + halfSizeX, r->position.y, halfSizeX, r->size.y\2)
end function

function rect_getSW(r as Rect ptr) as Rect
    dim as integer halfSizeY = r->size.y\2
    return rect_create(r->position.x, r->position.y + halfSizeY, r->size.x\2, halfSizeY)
end function

function rect_getSE(r as Rect ptr) as Rect
    dim as integer halfSizeX = r->size.x\2
    dim as integer halfSizeY = r->size.y\2
    return rect_create(r->position.x + halfSizeX, r->position.y + halfSizeY, halfSizeX, halfSizeY)
end function

'sub setRect(r as Rect ptr, x as integer, y as integer, w as integer, h as integer)
'    setPnt(@r->position, x, y)
'end sub

'sub rect_offset(r as Rect ptr, dx as integer, dy as integer)
'    pnt_offset(@r->position, dx, dy)
'end sub

function rect_intersects(r1 as Rect ptr, r2 as Rect ptr) as boolean
    #define r1p r1->position
    #define r1s r1->size
    #define r2p r2->position
    #define r2s r2->size
    if(r1p.x > (r2p.x+r2s.x) ORELSE (r1p.x+r1s.x) < r2p.x) then return false
    if(r1p.y > (r2p.y+r2s.y) ORELSE (r1p.y+r1s.y) < r2p.y) then return false
    return true
end function

function rect_contains(r as Rect ptr, p as Pnt ptr) as boolean
    if(p->x < r->position.x OR p->x > r->position.x + r->size.x) then return false
    if(p->y < r->position.y OR p->y > r->position.y + r->size.y) then return false
    return true
end function

function rect_getRandomPoint(r as Rect ptr) as Pnt
    return pnt_create(r->position.x+(r->size.x*rnd()),(r->position.y+r->size.y*rnd()))
end function

function toString overload(r as Rect ptr) as string
    dim as zstring ptr result
    sprintf(result, "(%i,%i)-(%i,%i)", r->position.x, r->position.y, r->position.x + r->size.x, r->position.y + r->size.y)
    return *result
end function
