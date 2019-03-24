@echo on
fbc dots.bas -gen gcc -g -showincludes -profile -v -e -x DotsProject_Debug.exe
pause