#pragma once

#include "pnt.bi"
#include "rect.bi"

type QuadTreeNode
    as Pnt p
    as any ptr n
end type

type QuadTree
    as integer count
    as QuadTreeNode n
end type
