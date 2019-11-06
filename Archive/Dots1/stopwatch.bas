#include "stopwatch.bi"

sub sw_start(w as StopWatch ptr)
    w->start = timer()
    w->running = true
end sub

sub sw_stop(w as StopWatch ptr)
    w->result = (timer() - w->start)*1000
    w->running = false
end sub

function sw_get(w as StopWatch ptr) as double
    return w->result
end function

sub sw_reset(w as StopWatch ptr)
    *w = type<StopWatch>(0,0,0)
end sub
