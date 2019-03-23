#pragma once

' You must stop the StopWatch before getting its result. You cannot get
'   its result while it is running.

type StopWatch
    private:
    dim as boolean running = false
    dim as double _start
    dim as double _result ' in ms
    
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
    _result = (timer() - _start)*1000
    running = false
end sub

function StopWatch.get() as double
    return iif(running, 0, _result)
end function

sub StopWatch.reset()
    running = false
    _start = 0
    _result = 0
end sub
