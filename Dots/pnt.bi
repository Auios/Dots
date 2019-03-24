#pragma once

type Pnt
    as single x
    as single y
    
    declare constructor()
    declare constructor(x as single, y as single)
    
    declare sub set(x as single, y as single)
    declare sub offSet(x as single, y as single)
    declare function toString() as string
end type

constructor Pnt()
end constructor

constructor Pnt(x as single, y as single)
    this.set(x, y)
end constructor

sub Pnt.set(x as single, y as single)
    this.x = x
    this.y = y
end sub

sub Pnt.offSet(dx as single, dy as single)
    this.x+=dx
    this.y+=dy
end sub

function Pnt.toString() as string
    return "(" & x & "," & y & ")"
end function
