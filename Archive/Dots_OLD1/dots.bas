#include "fbgfx.bi"

#include "AuPoint.bi"
#include "dot.bi"
#include "region.bi"

'Constants
#define WORLD_SIZE 16
#define REGION_SIZE 32
#define PI 3.14159265359

'Short
#define IDX(x,y,size) (y*size)+x

'Colors
#define C_WHITE rgb(255, 255, 255)
#define C_BLACK rgb(0, 0, 0)

using fb

randomize(timer())

sub initRegions(r as region ptr, size as integer)
    dim as AuPoint topLeft, botRight
    for y as integer = 0 to size-1
        for x as integer = 0 to size-1
            dim as integer i = IDX(y, x, WORLD_SIZE)
            topLeft.set(x * REGION_SIZE, y * REGION_SIZE)
            botRight.set(x * REGION_SIZE + REGION_SIZE, y * REGION_SIZE + REGION_SIZE)
            r[i] = type<region>(topLeft, botRight)
        next x
    next y
end sub

sub renderDots(r as region ptr)
    dim as dotNode ptr curr = r->first->nxt
    while(curr->n)
        circle(curr->n->position.x, curr->n->position.y), 5, rgb(100*rnd()+100, 100*rnd()+100, 100*rnd()+100),,,,f
        curr = curr->nxt
    wend
end sub

sub renderRegions(r as region ptr, size as integer, mPos as AuPoint)
    for y as integer = 0 to size-1
        for x as integer = 0 to size-1
            dim as integer i = IDX(x, y, WORLD_SIZE)
            if(r[i].inBoundary(mPos)) then
                line(r[i].topLeft.x, r[i].topLeft.y)-(r[i].botRight.x, r[i].botRight.y), rgb(100, 128, 100), bf
                line(r[i].topLeft.x, r[i].topLeft.y)-(r[i].botRight.x, r[i].botRight.y), rgb(200, 200, 200), b
            else
                line(r[i].topLeft.x, r[i].topLeft.y)-(r[i].botRight.x, r[i].botRight.y), rgb(100, 100, 100), bf
                line(r[i].topLeft.x, r[i].topLeft.y)-(r[i].botRight.x, r[i].botRight.y), rgb(200, 200, 200), b
            end if
        next x
    next y
end sub

'----------------

dim as region ptr regions = new region[WORLD_SIZE * WORLD_SIZE]

initRegions(regions, WORLD_SIZE)

screenRes(800, 600, 32, 1, 0)

dim as EVENT e
dim as AuPoint mPos
dim as boolean runApp = true
while(runApp)
    if(multikey(sc_escape)) then runApp = false
    if(screenEvent(@e)) then
        select case e.type
        case EVENT_MOUSE_MOVE
            mPos.set(e.x, e.y)
        case EVENT_MOUSE_EXIT
            mPos.set(-1,-1)
        end select
    end if
    
    screenLock()
    
    cls()
    renderRegions(regions, WORLD_SIZE, mPos)
    draw string(15, 15), str(mPos.x)
    draw string(15, 25), str(mPos.y)
    
    screenUnlock()
    
    sleep(1,1)
wend

sleep()

'Cleanup
delete[] regions
regions = 0