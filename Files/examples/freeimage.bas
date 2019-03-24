

'' Code example for loading all common image types using FreeImage.
'' The example loads an image passed as a command line argument.

'' The function FI_Load returns a null pointer (0) if there was an error during
'' loading.  Otherwise it returns a 32-bit PUT compatible buffer.

#include "FreeImage.bi"
#include "crt.bi"
#include "fbgfx.bi"

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
    return _result
end function

sub StopWatch.reset()
    running = false
    _start = 0
    _result = 0
end sub


Function effect ( ByVal src As UInteger, ByVal dst As UInteger, ByVal parameter As Any Ptr ) As UInteger
    If Rnd() < 0.1 Then Return rgb(255,255,0)
    if(src = 0) then return dst
    return src
End Function


Function FI_Load(filename As String) As Any Ptr
    If Len(filename) = 0 Then
        Return NULL
    End If

    '' Find out the image format
    Dim As FREE_IMAGE_FORMAT form = FreeImage_GetFileType(StrPtr(filename), 0)
    If form = FIF_UNKNOWN Then
        form = FreeImage_GetFIFFromFilename(StrPtr(filename))
    End If

    '' Exit if unknown
    If form = FIF_UNKNOWN Then
        Return NULL
    End If

    '' Always load jpegs accurately
    Dim As UInteger flags = 0
    If form = FIF_JPEG Then
        flags = JPEG_ACCURATE
    End If

    '' Load the image into memory
    Dim As FIBITMAP Ptr image = FreeImage_Load(form, StrPtr(filename), flags)
    If image = NULL Then
        '' FreeImage failed to read in the image
        Return NULL
    End If

    '' Flip the image so it matches FB's coordinate system
    FreeImage_FlipVertical(image)

    '' Convert to 32 bits per pixel
    Dim As FIBITMAP Ptr image32 = FreeImage_ConvertTo32Bits(image)

    '' Get the image's size
    Dim As UInteger w = FreeImage_GetWidth(image)
    Dim As UInteger h = FreeImage_GetHeight(image)

    '' Create an FB image of the same size
    Dim As fb.Image Ptr sprite = ImageCreate(w, h)

    Dim As Byte Ptr target = CPtr(Byte Ptr, sprite + 1)
    Dim As Integer target_pitch = sprite->pitch

    Dim As Any Ptr source = FreeImage_GetBits(image32)
    Dim As Integer source_pitch = FreeImage_GetPitch(image32)

    '' And copy over the pixels, row by row
    For y As Integer = 0 To (h - 1)
        memcpy(target + (y * target_pitch), _
               source + (y * source_pitch), _
               w * 4)
    Next

    FreeImage_Unload(image32)
    FreeImage_Unload(image)

    Return sprite
End Function

ScreenRes 640, 480, 32

Dim As String filename = Command(1)




Dim As Any Ptr image = FI_Load("D:\Development\Aseprite\PinkCube/PinkCube.png")
If image <> 0 Then
    printf(!"start\n")
    dim as StopWatch w_render
    while(true)
        dim as integer y = 0
        w_render.start()
        screenLock()
        cls()
        line(0, 0) - (100, 100), rgb(200, 200, 200), bf
        Put (0, y), image, alpha:y+=32', @effect
        Put (0, y), image, alpha:y+=32', @effect:y+=32
        Put (0, y), image, alpha:y+=32', @effect:y+=32
        Put (0, y), image, alpha:y+=32', @effect:y+=32
        draw string(10,470),"" & w_render.get()
        screenUnlock()
        w_render.stop()
        
        sleep(1,1)
    wend
    printf(!"end\n")
Else
    Print "Problem while loading file : " & filename
End If

Sleep

