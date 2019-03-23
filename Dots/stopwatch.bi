#pragma once

type StopWatch
    dim as boolean running = false
    dim as double start
    dim as double finish
    
    declare sub start()
    declare sub stop()
    declare function getTime() as double
end type

sub StopWatch.start()
    start = timer()
    running = true
end sub

sub StopWatch.finish()
    finish = timer()
    running = false
end sub

function StopWatch.getTime() as double
    if(running) then
        return timer() - start
    else
        return finish - start
    end if
end function
