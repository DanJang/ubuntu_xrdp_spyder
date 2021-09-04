# A batch file to conveniently launch a Remote Desktop with custom settings and automatically close the CMD window
# Custom settings : RDP Server URL, Remote Desktop window size, login user name, suppressing some Remote Desktop popups
#
# Alternatively, below single line will do the similar though it only sets width and height
# start "ubuntu20_xrdp" "%windir%\system32\mstsc.exe" /v:localhost:3390 /w:1800 /h:900

# create a temporary rdp file
(echo full address:s:localhost:3390& echo username:s:ubuntu& echo screen mode id:i:1& echo desktopwidth:i:1800& echo desktopheight:i:900& echo winposstr:s:0,1,0,0,1800,900& echo authentication level:i:0& echo redirectprinters:i:0 ) > temp.rdp
#     use below for entire screen in 2nd monitor
#(echo full address:s:localhost:3390& echo username:s:ubuntu& echo screen mode id:i:2& echo desktopwidth:i:1800& echo desktopheight:i:900& echo winposstr:s:0,1,44,-1748,574,-1317& echo authentication level:i:0& echo redirectprinters:i:0 ) > temp.rdp


# run mstsc.exe with the rdp file
start "ubuntu20_xrdp" "%windir%\system32\mstsc.exe" temp.rdp

# delete the rdp file
timeout 1
del temp.rdp

# close the cmd window
exit
