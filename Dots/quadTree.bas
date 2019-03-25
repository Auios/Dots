#include "quadtree.bi"
#include "pnt.bi"

function qtn_create(p as Pnt, d as any ptr = 0) as QTnode
    return type<QTnode>(p, d)
end function

function qt_create(r as Rect, c as integer, d as integer, p as QuadTree ptr = 0) as QuadTree
    dim as QuadTree qt
    qt.boundary = r
    qt.capacity = c
    qt.depth = d
    qt.parent = p
    qt.n = new QTnode[qt.capacity]
    return qt
end function

sub qt_subDivide(qt as QuadTree ptr)
    qt->nw = new QuadTree(qt_create(rectGetNW(@qt->boundary), qt->capacity, qt->depth+1, qt))
    qt->ne = new QuadTree(qt_create(rectGetNE(@qt->boundary), qt->capacity, qt->depth+1, qt))
    qt->sw = new QuadTree(qt_create(rectGetSW(@qt->boundary), qt->capacity, qt->depth+1, qt))
    qt->se = new QuadTree(qt_create(rectGetSE(@qt->boundary), qt->capacity, qt->depth+1, qt))
    qt->divided = true
end sub

function qt_insert(qt as QuadTree ptr, qtn as QTnode) as boolean
    dim as boolean result = false
    if(rectContains(@qt->boundary, @qtn.p)) then
        if(qt->count < qt->capacity) then
            qt->n[qt->count] = qtn
            qt->count+=1
            result = true
        else
            if(qt->boundary.size.x > 1) then
                if(qt->divided = 0) then qt_subDivide(qt)
                result = qt_insert(qt->nw, qtn) OR qt_insert(qt->ne, qtn) OR qt_insert(qt->sw, qtn) OR qt_insert(qt->se, qtn)
            end if
        end if
    end if
    return result
end function

function qt_search(qt as QuadTree ptr, p as Pnt, nodes as QTnode ptr, count as integer ptr) as boolean
    return false
end function

function qt_getCount(qt as QuadTree ptr) as integer
    dim as integer result = qt->count
    if(qt->divided) then
        result+=qt_getCount(qt->nw)
        result+=qt_getCount(qt->ne)
        result+=qt_getCount(qt->sw)
        result+=qt_getCount(qt->se)
    end if
    return result
end function

sub qt_deleteChildren(qt as QuadTree ptr)
    if(qt->divided) then
        qt_deleteChildren(qt->nw)
        delete[] qt->nw->n
        delete qt->nw
        qt->nw = 0
        
        qt_deleteChildren(qt->ne)
        delete[] qt->ne->n
        delete qt->ne
        qt->ne = 0
        
        qt_deleteChildren(qt->sw)
        delete[] qt->sw->n
        delete qt->sw
        qt->sw = 0
        
        qt_deleteChildren(qt->se)
        delete[] qt->se->n
        delete qt->se
        qt->se = 0
    end if
    qt->divided = false
end sub

sub qt_reset(qt as QuadTree ptr)
    qt_deleteChildren(qt)
    delete[] qt->n
    qt->n = new QTnode[qt->capacity]
    qt->count = 0
end sub

sub qt_delete(qt as QuadTree ptr)
    qt_deleteChildren(qt)
    delete[] qt->n
    qt = 0
end sub
