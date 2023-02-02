title "ASNW by Yross"
color F2
nircmdc.exe

md "AutoSaves of NotePad"
set time_now=%time%
set time_now=%time_now::=_%
set time_now=%time_now:~0,8%
set namefail=%date%_%time_now%
echo автосохр.ВКЛ>>"AutoSaves of NotePad/%namefail%.txt"

:M1
start " " "AutoSaves of NotePad/%namefail%.txt"
timeout 600
taskkill /FI "WINDOWTITLE eq %namefail%.txt*"
timeout 1 /nobreak
nircmdc.exe dlg "" "" click save
timeout 1 /nobreak
GOTO M1
