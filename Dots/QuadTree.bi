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
    as integer depth
    
    as QuadTree ptr nw, ne, sw, se
    
    declare constructor()
    declare constructor(r as Rect, cap as integer, depth as integer)
    declare function insert(p as Pnt, n as any ptr = 0) as boolean
    declare sub divide()
end type

constructor QuadTree()
end constructor

constructor QuadTree(r as Rect, cap as integer, depth as integer)
     this.boundary = r
     this.capacity = cap
     this.depth = depth
     this.n = new QuadTreeNode[cap]
end constructor

function QuadTree.insert(p as Pnt, d as any ptr = 0) as boolean
    dim as boolean result = false
    if(this.boundary.contains(@p)) then
        if(count < capacity) then
            this.n[count].p = p
            this.n[count].d = d
            count+=1
            result = true
        else
            if(NOT this.divided) then
                this.divide()
                this.divided = true
            end if
            if(this.nw->insert(p, d) OR this.ne->insert(p, d) OR this.sw->insert(p, d) OR this.se->insert(p, d)) then result = true
        end if
    end if
    return result
end function

sub QuadTree.divide()
    this.nw = new QuadTree(this.boundary.get_nw(), this.capacity, this.depth+1)
    this.ne = new QuadTree(this.boundary.get_ne(), this.capacity, this.depth+1)
    this.sw = new QuadTree(this.boundary.get_sw(), this.capacity, this.depth+1)
    this.se = new QuadTree(this.boundary.get_se(), this.capacity, this.depth+1)
end sub
