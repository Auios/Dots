#pragma once

#include "pnt.bi"
#include "rect.bi"

#include "sys.bi"

type QuadTreeNode
    as Pnt p
    as any ptr d
end type

type QuadTreeResultNode
    as QuadTreeNode ptr n
    as QuadTreeResultNode ptr nxt
    
    declare function count() as integer
end type

function QuadTreeResultNode.count() as integer
    dim as integer result = 0
    dim as QuadTreeResultNode ptr curr = @this
    while(curr)
        result+=1
        curr = curr->nxt
    wend
    return result
end function

type QuadTree
    as Rect boundary
    as integer capacity
    as integer _count
    as QuadTreeNode ptr n
    as boolean divided
    as integer depth
    
    as QuadTree ptr nw, ne, sw, se
    
    declare constructor()
    declare constructor(r as Rect, cap as integer, depth as integer)
    declare function insert(p as Pnt, n as any ptr = 0) as boolean
    declare function search(p as Pnt, r as integer, nodes as QuadTreeNode ptr, count as integer ptr) as boolean
    declare function count() as integer
    declare sub subDivide()
    declare sub deleteChildren()
    declare sub reset()
    declare sub cleanup()
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
            this.n[_count].p = p
            this.n[_count].d = d
            _count+=1
            result = true
        else
            if(NOT this.divided) then this.subDivide()
            result = this.nw->insert(p, d) OR this.ne->insert(p, d) OR this.sw->insert(p, d) OR this.se->insert(p, d)
        end if
    end if
    return result
end function

function QuadTree.search(p as Pnt, r as integer, nodes as QuadTreeNode ptr, size as integer ptr) as boolean
    ' Return true if anything was found. False if nothing was found.
    if(nodes = 0 OR size = 0) then return false ' Exit if programmer did not provide a spot for us to put the data
    if(NOT this.boundary.contains(@p)) then return false
    
    dim as Rect searchArea = Rect(p.x-r,p.y-r,p.x+r,p.y+r)
    
end function

function QuadTree.count() as integer
    dim as integer result = this.count
    if(this.divided) then
        result+=this.ne->count()
        result+=this.nw->count()
        result+=this.se->count()
        result+=this.sw->count()
    end if
    return result
end function

sub QuadTree.subDivide()
    this.nw = new QuadTree(this.boundary.get_nw(), this.capacity, this.depth+1)
    this.ne = new QuadTree(this.boundary.get_ne(), this.capacity, this.depth+1)
    this.sw = new QuadTree(this.boundary.get_sw(), this.capacity, this.depth+1)
    this.se = new QuadTree(this.boundary.get_se(), this.capacity, this.depth+1)
    this.divided = true
end sub

sub QuadTree.deleteChildren()
    if(this.divided) then
        this.nw->deleteChildren()
        delete[] this.nw->n
        delete this.nw
        this.nw = 0
        
        this.ne->deleteChildren()
        delete[] this.ne->n
        delete this.ne
        this.ne = 0
        
        this.sw->deleteChildren()
        delete[] this.sw->n
        delete this.sw
        this.sw = 0
        
        this.se->deleteChildren()
        delete[] this.se->n
        delete this.se
        this.se = 0
    end if
    this.divided = false
end sub

sub QuadTree.reset()
    this.deleteChildren()
    delete[] this.n
    this.n = new QuadTreeNode[this.capacity]
    this._count = 0
end sub

sub QuadTree.cleanup()
    this.deleteChildren()
    delete[] this.n
    this.boundary = Rect(0,0,0,0)
    this.capacity = 0
    this.depth = 0
end sub
