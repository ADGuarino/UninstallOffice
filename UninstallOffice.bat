@Echo Off

Echo:
Echo:
Echo   ...Check for Outlook 2010 install
set REGKEYOutlook2010=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{90140000-001A-0000-0000-0000000FF1CE}
set REGVALOutlook2010=DisplayName
reg query %REGKEYOutlook2010% /v %REGVALOutlook2010% 2>nul || (GOTO CheckOutlook2013)

Echo   ...Uninstalling Outlook 2010
\\cir-nas\software\Outlook2010\Files\setup.exe /config \\cir-nas\software\scriptedinstalls\configOutlook2010.xml /uninstall Outlook
IF EXIST "C:\Users\Public\Desktop\Microsoft Outlook 2010.lnk" DEL /Q "C:\Users\Public\Desktop\Microsoft Outlook 2010.lnk"
Echo   Outlook2010Uninstalled

:CheckOutlook2013

Echo:
Echo:
Echo   ...Check for Outlook 2013 install
set REGKEYOutlook2013=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{90150000-001A-0000-0000-0000000FF1CE}
set REGVALOutlook2013=DisplayName
reg query %REGKEYOutlook2013% /v %REGVALOutlook2013% 2>nul || (GOTO Outlook2010x64)

Echo   ...Uninstalling Outlook 2013
\\cir-nas\software\Outlook2013\Files\setup.exe /config \\cir-nas\software\scriptedinstalls\configOutlook2013.xml /uninstall Outlook
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   Outlook2013Uninstalled

:Outlook2010x64

Echo:
Echo:
Echo   ...Check for Outlook 2010 install on x64 
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90140000-001A-0000-0000-0000000FF1CE} 2>nul || (GOTO CheckOutlook2013x64)

Echo   ...Uninstalling Outlook 2010
\\cir-nas\software\Outlook2010\Files\setup.exe /config \\cir-nas\software\scriptedinstalls\configOutlook2010.xml /uninstall Outlook
IF EXIST "C:\Users\Public\Desktop\Microsoft Outlook 2010.lnk" DEL /Q "C:\Users\Public\Desktop\Microsoft Outlook 2010.lnk" 
Echo   Outlook2010Uninstalled

:CheckOutlook2013x64

Echo:
Echo:
Echo   ...Check for Outlook 2013 install on x64 
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90150000-001A-0000-0000-0000000FF1CE} 2>nul || (GOTO CheckOffice2010)

Echo   ...Uninstalling Outlook 2013
\\cir-nas\software\Outlook2013\Files\setup.exe /config \\cir-nas\software\scriptedinstalls\configOutlook2013.xml /uninstall Outlook
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk" 
Echo   Outlook2013Uninstalled

:CheckOffice2010

Echo:
Echo:
Echo   ...Check for Office 2010 install
set REGKEYOffice2010=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{90140000-0011-0000-0000-0000000FF1CE}
set REGVALOffice2010=DisplayName
reg query %REGKEYOffice2010% /v %REGVALOffice2010% 2>nul || (GOTO CheckOffice2013)

Echo   ...Uninstalling Office 2010
\\cir-nas\software\Office2010\Files\setup.exe /uninstall ProPlus /config \\cir-nas\software\Office2010\Files\Uninstall\configOffice2010.xml
IF EXIST "C:\Users\Public\Desktop\Microsoft Outlook 2010.lnk" DEL /Q "C:\Users\Public\Desktop\Microsoft Outlook 2010.lnk"
Echo   Office2010Uninstalled

:CheckOffice2013

Echo:
Echo:
Echo   ...Check for Office 2013 install
set REGKEYOffice2013=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90150000-0011-0000-0000-0000000FF1CE}
set REGVALOffice2013=DisplayName
reg query %REGKEYOffice2013% /v %REGVALOffice2013% 2>nul || (GOTO CheckOffice2013x64)

Echo   ...Uninstalling Office 2013
\\cir-nas\software\Office2013\Files\setup.exe /uninstall ProPlus /config \\cir-nas\software\Office2013\Files\Uninstall\configOffice2013.xml
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   Office2013Uninstalled

:CheckOffice2013x64

Echo:
Echo:
Echo   ...Check for Office 2013 install
set REGKEYOffice2013=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{90150000-0011-0000-0000-0000000FF1CE}
set REGVALOffice2013=DisplayName
reg query %REGKEYOffice2013% /v %REGVALOffice2013% 2>nul || (GOTO CheckOutlook2016x64)

Echo   ...Uninstalling Office 2013
\\cir-nas\software\Office2013\Files\setup.exe /uninstall ProPlus /config \\cir-nas\software\Office2013\Files\Uninstall\configOffice2013.xml
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   Office2013Uninstalled

:CheckOutlook2016x64

Echo:
Echo:
Echo   ...Check for Outlook 2016 install
set REGKEYOutlook2016=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90160000-001A-0000-0000-0000000FF1CE}
set REGVALOutlook2016=DisplayName
reg query %REGKEYOutlook2016% /v %REGVALOutlook2016% 2>nul || (GOTO CheckOffice2016x64)

Echo   ...Uninstalling Outlook 2016
\\cir-nas\software\Outlook2016\Files\setup.exe /config \\cir-nas\software\scriptedinstalls\configOutlook2016.xml /uninstall Outlook
IF EXIST "C:\Users\Public\Desktop\Microsoft Outlook 2016.lnk" DEL /Q "C:\Users\Public\Desktop\Microsoft Outlook 2016.lnk"
Echo   Outlook2016Uninstalled

:CheckOffice2016x64

Echo:
Echo:
Echo   ...Check for Office 2016 install
set REGKEYOffice2016=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90160000-0011-0000-0000-0000000FF1CE}
set REGVALOffice2016=DisplayName
reg query %REGKEYOffice2016% /v %REGVALOffice2016% 2>nul || (GOTO CheckReaders)

Echo   ...Uninstalling Office 2016
\\cir-nas\software\Office2016\Files\setup.exe /uninstall ProPlus /config \\cir-nas\software\Office2016\Files\Uninstall\configOffice2016.xml
IF EXIST "C:\Users\Public\Desktop\Outlook 2016.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2016.lnk"
Echo   Office2016Uninstalled

:CheckReaders

:CheckExcelViewer
set REGKEYExcelViewer=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{95120000-003F-0409-0000-0000000FF1CE}
set REGVALExcelViewer=DisplayName
reg query %REGKEYExcelViewer% /v %REGVALExcelViewer% 2>nul || (GOTO CheckExcelViewerx64)

Echo   ...Uninstalling ExcelViewer
MsiExec.exe /x{95120000-003F-0409-0000-0000000FF1CE} /qn
Echo   ExcelViewerUninstalled
GOTO CheckReaders

:CheckExcelViewerx64

set REGKEYExcelViewerx64=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{95120000-003F-0409-0000-0000000FF1CE}
set REGVALExcelViewerx64=DisplayName
reg query %REGKEYExcelViewerx64% /v %REGVALExcelViewerx64% 2>nul || (GOTO CheckWordViewer)

Echo   ...Uninstalling ExcelViewer
MsiExec.exe /x{95120000-003F-0409-0000-0000000FF1CE} /qn
Echo   ExcelViewerUninstalled
GOTO CheckReaders

:CheckWordViewer

set REGKEYWordViewer=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{90850409-6000-11D3-8CFE-0150048383C9}
set REGVALWordViewer=DisplayName
reg query %REGKEYWordViewer% /v %REGVALWordViewer% 2>nul || (GOTO CheckWordViewerx64)

Echo   ...Uninstalling WordViewer
MsiExec.Exe /x {90850409-6000-11D3-8CFE-0150048383C9} /qn
Echo   WordViewerUninstalled
GOTO CheckReaders

:CheckWordViewerx64

set REGKEYWordViewerx64=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90850409-6000-11D3-8CFE-0150048383C9}
set REGVALWordViewerx64=DisplayName
reg query %REGKEYWordViewerx64% /v %REGVALWordViewerx64% 2>nul || (GOTO CheckPowerPointViewer14)

Echo   ...Uninstalling WordViewer
MsiExec.Exe /x {90850409-6000-11D3-8CFE-0150048383C9} /qn
Echo   WordViewerUninstalled
GOTO CheckReaders

:CheckPowerPointViewer14
set REGKEYPowerPoint14=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{95140000-00AF-0409-0000-0000000FF1CE}
set REGVALPowerPoint14=DisplayName
reg query %REGKEYPowerPoint14% /v %REGVALPowerPoint14% 2>nul || (GOTO CheckPowerPointViewer14x64)

Echo   ...Uninstalling PowerPoint14
MsiExec.exe /X{95140000-00AF-0409-0000-0000000FF1CE} /qn
Echo   PowerPoint14Uninstalled
GOTO CheckReaders

:CheckPowerPointViewer14x64

set REGKEYPowerPoint14x64=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{95140000-00AF-0409-0000-0000000FF1CE}
set REGVALPowerPoint14x64=DisplayName
reg query %REGKEYPowerPoint14x64% /v %REGVALPowerPoint14x64% 2>nul || (GOTO CheckPowerPointViewer12)

Echo   ...Uninstalling PowerPoint14
MsiExec.exe /X{95140000-00AF-0409-0000-0000000FF1CE} /qn
Echo   PowerPoint14Uninstalled
GOTO CheckReaders

:CheckPowerPointViewer12
set REGKEYPowerPoint12=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{95120000-00AF-0409-0000-0000000FF1CE}
set REGVALPowerPoint12=DisplayName
reg query %REGKEYPowerPoint12% /v %REGVALPowerPoint12% 2>nul || (GOTO CheckPowerPointViewer12x64)

Echo   ...Uninstalling PowerPointViewer12
MsiExec.exe /X{95120000-00AF-0409-0000-0000000FF1CE} /qn
Echo   PowerPointViewer12Uninstalled
GOTO CheckReaders

:CheckPowerPointViewer12x64

set REGKEYPowerPoint12x64=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{95120000-00AF-0409-0000-0000000FF1CE}
set REGVALPowerPoint12x64=DisplayName
reg query %REGKEYPowerPoint12x64% /v %REGVALPowerPoint12x64% 2>nul || (GOTO CheckCompatPack)

Echo   ...Uninstalling PowerPointViewer12
MsiExec.exe /X{95120000-00AF-0409-0000-0000000FF1CE} /qn
Echo   PowerPointViewer12Uninstalled
GOTO CheckReaders

:CheckCompatPack

set REGKEYCompatPack=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{90120000-0020-0409-0000-0000000FF1CE}
set REGVALCompatPack=DisplayName
reg query %REGKEYCompatPack% /v %REGVALCompatPack% 2>nul || (GOTO CompatPackx64)

Echo   ...Uninstalling CompatPack
MsiExec.exe /X{90120000-0020-0409-0000-0000000FF1CE} /qn
Echo   CompatPackUninstalled
GOTO CheckReaders

:CompatPackx64

set REGKEYCompatPack=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90120000-0020-0409-0000-0000000FF1CE}
set REGVALCompatPack=DisplayName
reg query %REGKEYCompatPack% /v %REGVALCompatPack% 2>nul || (GOTO CheckLync)

Echo   ...Uninstalling CompatPack
MsiExec.exe /X{90120000-0020-0409-0000-0000000FF1CE} /qn
Echo   CompatPackUninstalled
GOTO CheckReaders

:CheckLync

Echo:
Echo:
Echo   ...Check for Lync 2013 install
set REGKEYLync2013=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{90150000-012C-0000-0000-0000000FF1CE}
set REGVALLync2013=DisplayName
reg query %REGKEYLync2013% /v %REGVALLync2013% 2>nul || (GOTO Lync2013Uninstallx64)

Echo:
Echo:
Echo   ...Uninstall Lync 2013
\\cir-nas\software\Lync2013\Files\x86\setup.exe /config \\cir-nas\software\Lync2013\Files\Uninstall\configLync2013.xml /uninstall Lync
Echo   Lync2013Uninstalled

:Lync2013Uninstallx64

Echo:
Echo:
Echo   ...Check for Lync 2013 install
set REGKEYLync2013=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{90150000-012C-0000-0000-0000000FF1CE}
set REGVALLync2013=DisplayName
reg query %REGKEYLync2013% /v %REGVALLync2013% 2>nul || (GOTO x64Skype)


Echo:
Echo:
Echo   ...Uninstall Lync 2013
\\cir-nas\software\Lync2013\Files\x86\setup.exe /config \\cir-nas\software\Lync2013\Files\Uninstall\configLync2013.xml /uninstall Lync
Echo   Lync2013Uninstalled


:x64Skype

Echo:
Echo:
Echo   ...Check for x64 Skype install
set REGKEYSkype=HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Office16.LYNC
set REGVALSkype=DisplayName
reg query %REGKEYSkype% /v %REGVALSkype% 2>nul || (GOTO Skype)

Echo   ...Uninstalling x64 Skype 
"C:\Program Files (x86)\Common Files\Microsoft Shared\OFFICE16\Office Setup Controller\setup.exe" /config \\cir-nas\software\scriptedinstalls\configLync2016.xml /uninstall LYNC
Echo   SkypeUninstalled

:Skype

Echo:
Echo:
Echo   ...Check for Skype install
set REGKEYSkype=HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Office16.LYNC
set REGVALSkype=DisplayName
reg query %REGKEYSkype% /v %REGVALSkype% 2>nul || (GOTO App-Vx64v1)

Echo   ...Uninstalling Skype 
"C:\Program Files\Common Files\Microsoft Shared\OFFICE16\Office Setup Controller\setup.exe" /config \\cir-nas\software\scriptedinstalls\configLync2016.xml /uninstall LYNC
Echo   SkypeUninstalled

:App-Vx64v1

Echo:
Echo:
Echo   ...Check for App-V x64
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{02b7afd0-93ce-400b-812d-e5ac298a6260} 2>nul || (GOTO App-Vv1)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{02b7afd0-93ce-400b-812d-e5ac298a6260}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vv1

Echo:
Echo:
Echo   ...Check for App-V
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{02b7afd0-93ce-400b-812d-e5ac298a6260} 2>nul || (GOTO App-Vx64v2)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{02b7afd0-93ce-400b-812d-e5ac298a6260}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vx64v2

Echo:
Echo:
Echo   ...Check for App-V x64
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{59a5fdd3-2b33-47c2-964c-7221b039cb87} 2>nul || (GOTO App-Vv2)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{59a5fdd3-2b33-47c2-964c-7221b039cb87}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vv2

Echo:
Echo:
Echo   ...Check for App-V
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{59a5fdd3-2b33-47c2-964c-7221b039cb87} 2>nul || (GOTO App-Vx64v3)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{59a5fdd3-2b33-47c2-964c-7221b039cb87}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vx64v3

Echo:
Echo:
Echo   ...Check for App-V x64
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{87c45914-7118-4637-8f23-bae2b3df7872} 2>nul || (GOTO App-Vv3)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{87c45914-7118-4637-8f23-bae2b3df7872}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vv3

Echo:
Echo:
Echo   ...Check for App-V
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{87c45914-7118-4637-8f23-bae2b3df7872} 2>nul || (GOTO App-Vx64v4)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{87c45914-7118-4637-8f23-bae2b3df7872}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled


:App-Vx64v4

Echo:
Echo:
Echo   ...Check for App-V x64
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{b08e77c6-988d-429f-ac06-9a32121a361c} 2>nul || (GOTO App-Vv4)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{b08e77c6-988d-429f-ac06-9a32121a361c}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vv4

Echo:
Echo:
Echo   ...Check for App-V
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{b08e77c6-988d-429f-ac06-9a32121a361c} 2>nul || (GOTO App-Vx64v5)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{b08e77c6-988d-429f-ac06-9a32121a361c}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled


:App-Vx64v5

Echo:
Echo:
Echo   ...Check for App-V x64
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{B2A6CCDE-5E94-43D8-B47E-A455CEF33C4B} 2>nul || (GOTO App-Vv5)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{B2A6CCDE-5E94-43D8-B47E-A455CEF33C4B}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vv5

Echo:
Echo:
Echo   ...Check for App-V
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{B2A6CCDE-5E94-43D8-B47E-A455CEF33C4B} 2>nul || (GOTO App-Vx64v6)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{B2A6CCDE-5E94-43D8-B47E-A455CEF33C4B}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled


:App-Vx64v6

Echo:
Echo:
Echo   ...Check for App-V x64
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{6a7351d4-99b9-4be8-99a6-f70b825c119e} 2>nul || (GOTO App-Vv6)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{6a7351d4-99b9-4be8-99a6-f70b825c119e}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vv6

Echo:
Echo:
Echo   ...Check for App-V
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{6a7351d4-99b9-4be8-99a6-f70b825c119e} 2>nul || (GOTO App-Vx64v7)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{6a7351d4-99b9-4be8-99a6-f70b825c119e}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled


:App-Vx64v7

Echo:
Echo:
Echo   ...Check for App-V x64
reg query HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{5A1C366F-31AC-48CA-BF13-0504FF31D6A3} 2>nul || (GOTO App-Vv7)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{5A1C366F-31AC-48CA-BF13-0504FF31D6A3}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:App-Vv7

Echo:
Echo:
Echo   ...Check for App-V
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\{5A1C366F-31AC-48CA-BF13-0504FF31D6A3} 2>nul || (GOTO Cleanup)

Echo   ...Uninstalling App-V
"C:\ProgramData\Package Cache\{5A1C366F-31AC-48CA-BF13-0504FF31D6A3}\appv_client_setup.exe" /uninstall /quiet /norestart
IF EXIST "C:\Users\Public\Desktop\Outlook 2013.lnk" DEL /Q "C:\Users\Public\Desktop\Outlook 2013.lnk"
Echo   App-V has been Uninstalled

:Cleanup
IF EXIST C:\Users\Public\Desktop\Lync* DEL /Q C:\Users\Public\Desktop\Lync*
IF EXIST "C:\Users\Public\Desktop\Outlook 2013*" DEL /Q "C:\Users\Public\Desktop\Outlook 2013*"
IF EXIST "C:\Users\Public\Desktop\Excel 2013*" DEL /Q "C:\Users\Public\Desktop\Excel 2013*"
IF EXIST "C:\Users\Public\Desktop\Word 2013*" DEL /Q "C:\Users\Public\Desktop\Word 2013*"

RMDIR /S /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Office 2013 Tools"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Access 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Excel 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\OneDrive for Business 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\OneNote 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Outlook 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\PowerPoint 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Publisher 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Send to OneNote 2013.lnk"
DEL /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\Word 2013.lnk

:End
EXIT