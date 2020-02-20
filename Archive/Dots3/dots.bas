#include "fbgfx.bi"

#include "constants.bi"
#include "utility.bi"
#include "dot.bi"

using fb

randomize(timer())

dim as dot ptr d = new dot
*d = dot_create(type<pnt>(300, 400), 16)

echo("Creating window...")
screenRes(800, 600)

dim as boolean run_app = true
dim as event e
dim as single mx, my
dim as single start_time, delta_time

echo("Running...")
while(run_app)
    start_time = timer()
    if(screenEvent(@e)) then
        select case(e.type)
        case EVENT_KEY_RELEASE
            if(e.scancode = SC_ESCAPE) then run_app = false
            if(e.scancode = SC_T) then d->target_position = type<pnt>(d->position.x + (100*rnd()-50), d->position.y + (100*rnd()-50))
        case EVENT_MOUSE_MOVE
            mx = e.x
            my = e.y
        case EVENT_MOUSE_BUTTON_RELEASE
            d->target_position = type<pnt>(mx, my)
            echo("Current: " & d->angle)
            echo("Target: " & d->target_angle)
        end select
    end if
    delta_time = timer() - start_time
    dot_update(d, delta_time)
    
    screenLock()
    cls()
    dot_render(d)
    screenUnlock()
    sleep(1,1)
    
wend

echo("Exiting...")
sleep(250, 1)