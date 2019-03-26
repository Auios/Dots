#include "sound.bi"
'http://distro.ibiblio.org/rootlinux/rootlinux-ports/more/freealut/freealut-1.1.0/doc/alut.html
'https://www.openal.org/documentation/OpenAL_Programmers_Guide.pdf

function sound_load(snd as Sound ptr, path as string) as boolean
    snd->path = path
    snd->buffer = alutCreateBufferFromFile(snd->path)
    
    dim as ALenum result = alutGetError()
    if(result <> ALUT_ERROR_NO_ERROR) then return false
    
    alGenSources(1, @snd->source)
    snd->repeat = AL_FALSE
    snd->gain = 1.0
    snd->pitch = 1.0
    
    alSourcef(snd->source, AL_GAIN, snd->gain)
    alSourcef(snd->source, AL_PITCH, snd->pitch)
    
    return true
end function

sub sound_play(snd as Sound ptr)
    alSourcei(snd->source, AL_BUFFER, snd->buffer)
    alSourcef(snd->source, AL_GAIN, snd->gain)
    alSourcef(snd->source, AL_PITCH, snd->pitch)
    
    alSourcePlay(snd->source)
end sub

sub sound_pause(snd as Sound ptr)
    alSourcePause(snd->source)
end sub

sub sound_stop(snd as Sound ptr)
    alSourceStop(snd->source)
end sub

sub sound_setRepeat(snd as Sound ptr, repeat as boolean)
    snd->repeat = repeat
    alSourcei(snd->source, AL_LOOPING, snd->repeat)
end sub

sub sound_setGain(snd as Sound ptr, gain as single = 1.0)
    snd->gain = gain
    alSourcef(snd->source, AL_PITCH, snd->gain)
end sub

sub sound_setPitch(snd as Sound ptr, pitch as single = 1.0)
    snd->pitch = pitch
    alSourcef(snd->source, AL_PITCH, pitch)
end sub

sub sound_delete(snd as Sound ptr)
    alDeleteBuffers(1, @snd->buffer)
    alDeleteSources(1, @snd->source)
end sub

'sub reportError()
'    printf(!"ALUT error: %s\n", alutGetErrorString(alutGetError()))
'end sub
'
'if(alutInit(0,0)=0) then
'    reportError()
'end if