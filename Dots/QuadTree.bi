#pragma once

#include "rect.bi"

type QTnode
    as Pnt p
    as any ptr d
end type

type QuadTree
    as integer depth
    as integer capacity
    as QuadTree ptr parent
    as Rect boundary
    as integer count
    as QTNode ptr n
    as integer divided
    as QuadTree ptr nw, ne, sw, se
end type

type QTresult
    as integer count
    as QTnode ptr ptr n
    as integer idx
end type

declare function qtn_create(p as Pnt, d as any ptr = 0) as QTnode
declare function qt_create(boundary as Rect, capacity as integer, depth as integer, parent as QuadTree ptr = 0) as QuadTree
declare sub qt_subDivide(qt as QuadTree ptr)
declare function qt_insert(qt as QuadTree ptr, qtn as QTnode) as boolean
declare function qt_searchArea(qt as QuadTree ptr, result as QTresult ptr, area as Rect) as boolean
declare function qt_getCount(qt as QuadTree ptr) as integer
declare sub qt_deleteChildren(qt as QuadTree ptr)
declare sub qt_reset(qt as QuadTree ptr)
declare sub qt_delete(qt as QuadTree ptr)