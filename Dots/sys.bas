#include "crt/stdio.bi"

sub echo(s as string = "")
    printf(s & !"\n")
end sub