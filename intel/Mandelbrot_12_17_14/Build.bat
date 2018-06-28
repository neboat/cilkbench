@echo off

set EXEC=Mandelbrot.exe
set SRCDIR=src\
set DESTDIR=release\

rem if in Visual Studio environment
if /i "%PRODUCT_NAME%"=="" (
	set CC=cl
	set CC_FLAGS=/EHsc /O2 /Ot /arch:AVX /GL
)
rem else if in Intel environment
if /i NOT "%PRODUCT_NAME%"=="" (
	set CC=icl
	set CC_FLAGS=/O3 /QxAVX /Qipo
)

set LINK_FLAGS=/INCREMENTAL:NO /SUBSYSTEM:CONSOLE /MANIFEST:NO

if /i "%1"=="clean" goto clean
if /i "%1"=="run" goto run

:options
if "%1"=="" goto compile

if /i "%1"=="vec-report" set CC_FLAGS=%CC_FLAGS% /Qvec-report1
if /i "%1"=="perf_num" set CC_FLAGS=%CC_FLAGS% -D PERF_NUM
shift
goto options

:compile
mkdir %DESTDIR% 2>nul
%CC% %CC_FLAGS% /Fo%DESTDIR% %SRCDIR%\*.cpp -link %LINK_FLAGS% /out:%DESTDIR%%EXEC%
goto eof

:run
%EXEC% %2
goto eof

:clean
echo removing files...
del *.bmp *.valsig 2>nul
echo Y | rmdir /S %DESTDIR% >nul 2>nul
:eof
