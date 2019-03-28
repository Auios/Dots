#include "dot.bi"
#include "crt/stdio.bi"

function dot_create(p as Pnt, v as integer = 0) as Dot
    dim as Dot d = any
    d.position = p
    d.v = v
    return d
end function

function toString overload(d as Dot ptr) as string
    dim as zstring ptr result
    sprintf(result, "%s, %i", toString(@d->position), d->v)
    return *result
end function
