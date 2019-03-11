#include "rect.bi"

sub drawRect(r as Rect, c as uinteger = rgb(255, 255 ,255))
    line(r.topLeft.x, r.topLeft.y)-(r.botRight.x, r.botRIght.y),c,b
end sub

function main(argc as integer, argv as zstring ptr ptr) as integer
    dim as Rect r
    r.set(0, 0, 200, 200)
    
    screenRes(800, 600)
    drawRect(r)
    
    sleep()
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))