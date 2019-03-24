#pragma once

#include "pnt.bi"
#include "rect.bi"

#include "sys.bi"

type QuadTreeNode
    as Pnt p
    as any ptr d
end type

type QuadTree
    as QuadTree ptr parent
    as Rect boundary
    as integer capacity
    as integer count
    as QuadTreeNode ptr n
    as boolean divided
    as integer depth
    
    as QuadTree ptr nw, ne, sw, se
    
    declare constructor()
    declare constructor(r as Rect, cap as integer, depth as integer, parent as QuadTree ptr = 0)
    declare function insert(p as Pnt, n as any ptr = 0) as boolean
    declare function search(p as Pnt, nodes as QuadTreeNode ptr, count as integer ptr) as boolean
    declare function totalCount() as integer
    declare sub subDivide()
    declare sub deleteChildren()
    declare sub reset()
    declare sub cleanup()
end type

constructor QuadTree()
end constructor

constructor QuadTree(r as Rect, cap as integer, depth as integer, parent as QuadTree ptr = 0)
    this.parent = parent
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
            if(NOT this.divided) then this.subDivide()
            result = this.nw->insert(p, d) OR this.ne->insert(p, d) OR this.sw->insert(p, d) OR this.se->insert(p, d)
        end if
    end if
    return result
end function

function QuadTree.search(p as Pnt, nodes as QuadTreeNode ptr, count as integer ptr) as boolean
    return false
end function

function QuadTree.totalCount() as integer
    dim as integer result = this.count
    if(this.divided) then
        result+=this.ne->totalCount()
        result+=this.nw->totalCount()
        result+=this.se->totalCount()
        result+=this.sw->totalCount()
    end if
    'echo("=== " & this.depth & " - " & n & " ===")
    'echo("Count: " & this.count)
    'echo()
    return result
end function

sub QuadTree.subDivide()
    this.nw = new QuadTree(this.boundary.get_nw(), this.capacity, this.depth+1, @this)
    this.ne = new QuadTree(this.boundary.get_ne(), this.capacity, this.depth+1, @this)
    this.sw = new QuadTree(this.boundary.get_sw(), this.capacity, this.depth+1, @this)
    this.se = new QuadTree(this.boundary.get_se(), this.capacity, this.depth+1, @this)
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
    this.count = 0
end sub

sub QuadTree.cleanup()
    this.deleteChildren()
    delete[] this.n
    this.boundary = Rect(0,0,0,0)
    this.capacity = 0
    this.depth = 0
end sub
