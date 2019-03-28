#pragma once

#include "AL/al.bi"
#include "AL/alut.bi"

type Sound
    as string path
    as ALuint buffer
    as ALuint source
    as boolean repeat
    as single gain
    as single pitch
end type

declare function sound_load(snd as Sound ptr, path as string) as boolean
declare sub sound_play(snd as Sound ptr)
'declare sub sound_pause(snd as Sound ptr)
'declare sub sound_stop(snd as Sound ptr)
declare sub sound_setRepeat(snd as Sound ptr, repeat as boolean)
declare sub sound_setGain(snd as Sound ptr, gain as single = 1.0)
declare sub sound_setPitch(snd as Sound ptr, pitch as single = 1.0)
declare sub sound_delete(snd as Sound ptr)

#MACRO sound_pause(_s)
alSourcePause((_s)->source)
#ENDMACRO

#MACRO sound_stop(_s)
alSourceStop((_s)->source)
#ENDMACRO