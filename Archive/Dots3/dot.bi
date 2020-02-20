#pragma once

#include "constants.bi"
#include "pnt.bi"

enum dot_state
    idle
    begin_look_at
    look_at
    begin_move_to
    move_to
end enum

type dot
    as Pnt position
    as single size
    as single speed
    as single angle
    as single theta
    as single turn_speed
    as dot_state state
    as Pnt target_position
    as single target_theta
    as single target_angle
    as single next_update_time
end type

sub dot_rotate(d as dot ptr, amount as single)
    d->angle += amount
    d->theta = d->angle*pi/180
end sub

sub dot_set_rotation(d as dot ptr, angle as single)
    d->angle = angle
    d->theta = d->angle*pi/180
end sub

function dot_create(position as pnt, size as single, speed as single = 0.1, turn_speed as single = 0.5, angle as single = 0) as dot
    dim as dot d
    d.position = position
    d.size = size
    d.speed = speed
    dot_set_rotation(@d, angle)
    d.turn_speed = turn_speed
    return d
end function

sub dot_move_forward(d as dot ptr)
    d->position.x += cos(d->theta) * d->speed
    d->position.y += sin(d->theta) * d->speed
end sub

sub dot_update(d as dot ptr, dt as single)
    'dot_move_forward(d)
    select case(d->state)
    case dot_state.idle
        d->state = dot_state.begin_look_at
        d->target_position = type<pnt>(d->position.x + (200*rnd()-50), d->position.y + (200*rnd()-50))
    case dot_state.begin_look_at
        d->state = dot_state.look_at
    case dot_state.look_at
        d->target_theta = atan2(d->target_position.y - d->position.y, d->target_position.x - d->position.x)
        d->target_angle = d->target_theta * 180 / pi
        dim as single direction = (cos(d->theta) * sin(d->target_theta) - cos(d->target_theta) * sin(d->theta)) * 180 / pi
        if(abs(direction) > d->turn_speed) then
            if(direction > 0) then
                dot_rotate(d, d->turn_speed)
            else
                dot_rotate(d, -d->turn_speed)
            end if
        else
            dot_set_rotation(d, d->target_angle)
            d->state = dot_state.idle
        end if
    end select
end sub

sub dot_render(d as dot ptr)
    circle(d->position.x, d->position.y), d->size
    line(d->position.x, d->position.y)-(d->position.x + d->size * cos(d->theta) , d->position.y + d->size * sin(d->theta))
    circle(d->target_position.x, d->target_position.y), 2, rgb(200, 200, 100)
end sub