#include "pnt.bi"

constructor Pnt()
end constructor

constructor Pnt(x as integer, y as integer)
    this.x = x
    this.y = y
end constructor

sub Pnt.set(x as integer, y as integer)
    this.x = x
    this.y = y
end sub
