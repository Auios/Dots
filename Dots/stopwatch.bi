#pragma once

type StopWatch
    private:
    dim as boolean running = false
    dim as double _start
    dim as double _finish
    
    public:
    declare sub start()
    declare sub stop()
    declare function get() as double
    declare sub reset()
end type

sub StopWatch.start()
    _start = timer()
    running = true
end sub

sub StopWatch.stop()
    _finish = timer()
    running = false
end sub

function StopWatch.get() as double
    if(running) then
        return (timer() - _start)*1000
    else
        return (_finish - _start)*1000
    end if
end function

sub StopWatch.reset()
    running = false
    _start = 0
    _finish = 0
end sub
