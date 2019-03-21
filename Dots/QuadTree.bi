#pragma once

#include "pnt.bi"
#include "rect.bi"

type QuadTreeNode
    as Pnt p
    as any ptr d
end type

type QuadTree
    as Rect boundary
    as integer capacity
    as integer count
    as QuadTreeNode ptr n
    as boolean divided
    
    as QuadTree ptr nw, ne, sw, se
    
    declare constructor()
    declare constructor(r as Rect, cap as integer)
    declare sub insert(p as Pnt, n as any ptr = 0)
    declare sub divide()
end type

constructor QuadTree()
end constructor

constructor QuadTree(r as Rect, cap as integer)
     this.boundary = r
     this.capacity = cap
     this.n = new QuadTreeNode[cap]
end constructor

sub QuadTree.insert(p as Pnt, d as any ptr = 0)
    if(NOT this.boundary.contains(@p)) then return
    if(count < capacity) then
        this.n[count].p = p
        this.n[count].d = d
        count+=1
    else
        if(NOT this.divided) then
            this.divide()
            this.divided = true
        end if
        this.nw->insert(p, d)
        this.ne->insert(p, d)
        this.sw->insert(p, d)
        this.se->insert(p, d)
    end if
end sub

sub QuadTree.divide()
    this.nw = new QuadTree(Rect(this.boundary.topLeft.x, this.boundary.topLeft.y, this.boundary.botRight.x/2, this.boundary.botRight.y/2), this.capacity)
    this.ne = new QuadTree(Rect(this.boundary.botRight.x/2, this.boundary.topLeft.y, this.boundary.botRight.x, this.boundary.botRight.y/2), this.capacity)
    this.sw = new QuadTree(Rect(this.boundary.topLeft.x, this.boundary.botRight.y/2, this.boundary.botRight.x/2, this.boundary.botRight.y), this.capacity)
    this.se = new QuadTree(Rect(this.boundary.botRight.x/2, this.boundary.botRight.y/2, this.boundary.botRight.x, this.boundary.botRight.y), this.capacity)
end sub
