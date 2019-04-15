#pragma once

type StopWatch
    dim as double start
    dim as double result ' in ms
    dim as boolean running
end type

declare sub sw_start(w as StopWatch ptr)
declare sub sw_stop(w as StopWatch ptr)
declare function sw_get(w as StopWatch ptr) as double
declare sub sw_reset(w as StopWatch ptr)
