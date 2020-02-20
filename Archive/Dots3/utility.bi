#pragma once

#include "crt.bi"

declare sub echo overload(as string)
'declare sub echo overload(as single)

sub echo(message as string)
    printf(message + !"\n")
end sub

'sub echo(message as single)
'    printf(str(message) + !"\n")
'end sub