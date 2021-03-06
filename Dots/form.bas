#include "form.bi"
#include "pnt.bi"
#include "rect.bi"

#define CS 8 'Character size

function form_create(x as integer, y as integer, w as integer, h as integer,_
    bckClr as uinteger = rgb(200, 200, 200), borClr as uinteger = rgb(100, 100, 100), txtClr as uinteger = rgb(100, 100, 100)) as Form
    dim as Form f
    f.area = rect_create(x,y,w,h)
    f.bckClr = bckClr
    f.borClr = borClr
    f.txtClr = txtClr
    f.margin = 4
    return f
end function

sub form_setPosition(f as Form ptr, x as integer, y as integer)
    pnt_set(@f->area.position, x, y)
end sub

sub form_setSize(f as Form ptr, w as integer, h as integer)
    pnt_set(@f->area.size, w, h)
end sub

sub form_render(f as Form ptr)
    #define _x f->area.position.x
    #define _y f->area.position.y
    #define _w f->area.size.x
    #define _h f->area.size.y
    dim as integer rm = f->margin*2 ' Real margin
    f->currentLine = 0
    line(_x,_y)-step((_w*CS)+rm,(_h*CS)+rm), f->bckClr, bf
    line(_x,_y)-step((_w*CS)+rm,(_h*CS)+rm), f->borClr, b
end sub

sub form_print(f as Form ptr, txt as string)
    #define _x f->area.position.x
    #define _y f->area.position.y
    #define _l f->currentLine
    #define _m f->margin
    draw string(_x+_m, _y+_m+(CS*_l)),txt, f->txtClr
    f->currentLine+=1
end sub
