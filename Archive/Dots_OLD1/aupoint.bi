#pragma once

type AuPoint
    as single x,y
    
    declare constructor()
    declare constructor(x as single, y as single)
    declare constructor(p as AuPoint)
    declare sub set(x as single, y as single)
    declare sub set(p as AuPoint)
    declare sub offset(distance as single)
    declare sub offset(p as AuPoint, distance as single)
end type

constructor AuPoint()
end constructor

constructor AuPoint(x as single, y as single)
    this.x = x
    this.y = y
end constructor

constructor AuPoint(p as AuPoint)
    this.x = p.x
    this.y = p.y
end constructor

sub AuPoint.set(x as single, y as single)
    this.x = x
    this.y = y
end sub

sub AuPoint.set(p as AuPoint)
    this.x = p.x
    this.y = p.y
end sub

sub AuPoint.offset(distance as single)
    this.x+=distance
    this.y+=distance
end sub

sub AuPoint.offset(p as AuPoint, distance as single)
    this.x = p.x + distance
    this.y = p.y + distance
end sub

