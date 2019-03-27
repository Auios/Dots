#define fbc -gen gcc -O 3

#undef BOOLEAN
#undef TRUE
#undef FALSE
#define BOOLEAN UBYTE
#define TRUE 1
#define FALSE 0
#define isFalse( _F ) ((_F)=FALSE)

#include "fbgfx.bi"
#include "color.bi"

#include "sys.bas"
#include "sound.bas"
#include "form.bas"

#include "pnt.bas"
#include "rect.bas"
#include "mouse.bas"
#include "stopwatch.bas"
#include "quadtree.bas"
#include "dot.bas"

#include "render.bas"

#define QT_SIZE 512
#define QT_CAP 8

#define CLEARCOLOR color.slateGray
#define BACKGROUNDCOLOR color.silver
#define BORDERCOLOR color.dimGray
#define TEXTCOLOR color.dimGray
#define DOTCOLOR color.yellow

using fb

randomize(1)

sub displayInstructions()
    echo("A - Spam single dot in the corner")
    echo("S - Spam 10 dots in the corner")
    echo("D - Spam 100 dots in the corner")
    echo("Q - Spam 1000 dots randomly")
    echo("W - Spam 10000 Dots randomly")
    echo("")
    echo("C - Reset the QuadTree from the root down")
    echo("")
    echo("Left click - Spawn dot at cursor")
    echo("Right click - rapidly spawn dots at cursor")
    echo("Mouse wheel - zoom in/out")
    echo("")
    echo("1 - Select north west quadtree")
    echo("2 - Select north east quadtree")
    echo("3 - Select south west quadtree")
    echo("4 - Select south east quadtree")
    echo("")
    echo("Backspace - go up a parent")
    echo("R - Go to root quadtree")
    echo("")
    echo("Escape - Exit application")
end sub

sub buildQT(qt as QuadTree ptr, d as Dot ptr, size as integer)
    
end sub

function spamDots(qt as QuadTree ptr, count as integer, x as integer = 0, y as integer = 0, w as integer = 0, h as integer = 0) as integer
    dim as integer added
    for i as integer = 0 to count-1
        added+=qt_insert(qt, qtn_create(pnt_create(iif(w,w*rnd()+x,x),iif(h,h*rnd()+y,y)),0))
    next i
    return added
end function

function main(argc as integer, argv as zstring ptr ptr) as integer
    screenRes(800, 600, 32, 1, 0)
    dim as any ptr scrnBuff = screenPtr()
    
    sound_init(0,0)
    
    displayInstructions()
    
    dim as QuadTree qt = qt_create(rect_create(0, 0, QT_SIZE, QT_SIZE), QT_CAP, 0)
    dim as QuadTree ptr qt_dbg = @qt
    dim as QTresult searchResults
    dim as integer globalCount = 0
    dim as integer oldWheel
    dim as integer zoom = 1
    
    dim as Form fQTDebug = form_create(520, 6, 31, 9, BACKGROUNDCOLOR, BORDERCOLOR, TEXTCOLOR)
    dim as Form fMouseDebug = form_create(520, 90, 22, 5, BACKGROUNDCOLOR, BORDERCOLOR, TEXTCOLOR)
    dim as Form fOther = form_create(520, 145, 30, 7, BACKGROUNDCOLOR, BORDERCOLOR, TEXTCOLOR)
    
    dim as StopWatch w_loop
    dim as StopWatch w_search
    dim as StopWatch w_qtRender
    
    dim as Mouse ms_new, ms
    dim as EVENT e
    dim as boolean runApp = true
    
    globalCount+=spamDots(@qt, 9, 0, 0, QT_SIZE, QT_SIZE)
    
    ' ===== Main loop =====
    while(runApp)
        sw_start(@w_loop)
        
        ' ===== Updates =====
        if(ms_new.state = 0) then
            ms = ms_new
            'zoom+=ms.dWheel
        end if
        mouse_update(@ms_new)
        
        ' ===== Events ======
        if(screenEvent(@e)) then
            select case e.type
            ' ===== Key press =====
            case EVENT_KEY_PRESS
                ' ===== ESCAPE - close application =====
                if(e.scancode = SC_ESCAPE) then runApp = false
                
                ' ===== R =====
                if(e.scancode = SC_R) then qt_dbg = @qt
                
                ' ===== 1 - 4 - Step into children =====
                if(qt_dbg->divided) then
                    if(e.scancode = SC_1) then qt_dbg = qt_dbg->nw
                    if(e.scancode = SC_2) then qt_dbg = qt_dbg->ne
                    if(e.scancode = SC_3) then qt_dbg = qt_dbg->sw
                    if(e.scancode = SC_4) then qt_dbg = qt_dbg->se
                end if
                
                if(e.scancode = SC_BACKSPACE AND qt_dbg->parent <> 0) then qt_dbg = qt_dbg->parent
                
                ' ===== A - Spam dot in corner =====
                if(e.scancode = SC_A) then globalCount+=spamDots(@qt, 1)
                
                ' ===== S - Spam dots in corner =====
                if(e.scancode = SC_S) then globalCount+=spamDots(@qt, 10)
                
                ' ===== D - Spam dots in corner =====
                if(e.scancode = SC_D) then globalCount+=spamDots(@qt, 100)
                
                ' ===== Q - Spam dots randomly=====
                if(e.scancode = SC_Q) then globalCount+=spamDots(@qt, 1000, 0, 0, QT_SIZE, QT_SIZE)
                
                ' ===== W - Spam dots randomly=====
                if(e.scancode = SC_W) then globalCount+=spamDots(@qt, 10000, 0, 0, QT_SIZE, QT_SIZE)
                
                ' ===== C - Clear =====
                if(e.scancode = SC_C) then
                    qt_reset(@qt)
                    globalCount = 0
                end if
                
            ' ===== Mouse =====
            case EVENT_MOUSE_BUTTON_PRESS
                ' ===== Left button - Add dot where mouse is =====
                if(e.button = BUTTON_LEFT) then
                    sw_start(@w_search)
                    qt_search(@qt, @searchResults, rect_create(ms.x-5, ms.y-5, ms.x+5, ms.y+5))
                    sw_stop(@w_search)
                end if
            
            case EVENT_MOUSE_WHEEL
                zoom += e.z-oldWheel
                oldWheel = e.z
            end select
        end if
        
        if(ms.buttons = 2) then
            dim as Pnt p = type<Pnt>(ms.x, ms.y)
            sw_start(@w_search)
            globalCount+=qt_insert(@qt, qtn_create(p))
            sw_stop(@w_search)
        end if
        
        ' ===== Rendering =====
        screenLock()
        clearScreen(800, 600, CLEARCOLOR)
        
        sw_start(@w_qtRender)
        qt_render(@qt, DOTCOLOR, true)
        sw_stop(@w_qtRender)
        
        rect_render(@qt_dbg->boundary, rgb(82, 216, 136))
        
        ' Render forms
        form_qtDebug(@fQTdebug, qt_dbg)
        form_mouseDebug(@fMouseDebug, @ms)
        
        form_render(@fOther)
        form_print(@fOther, "globalCount: " & globalCount)
        form_print(@fOther, "w_loop: " & sw_get(@w_loop))
        form_print(@fOther, "w_search: " & sw_get(@w_search))
        form_print(@fOther, "w_qtRender: " & sw_get(@w_qtRender))
        form_print(@fOther, "zoom: " & zoom)
        form_print(@fOther, "wheel: " & e.z)
        form_print(@fOther, "oldWheel: " & oldWheel)
        screenUnlock()
        
        sw_stop(@w_loop)
        sleep(1, 1)
    wend
    
    ' Cleanup any messes
    qt_delete(@qt)
    sound_exit()
    
    return 0
end function

end(main(__FB_ARGC__, __FB_ARGV__))