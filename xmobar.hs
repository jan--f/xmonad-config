-- xmobar config used by me
-- based on the config of Vic Fryzel

Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1320, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Cpu ["-L","3","-H","50","--normal","#CEFFAC","--high","#FFB6B0"] 10,
        Run MultiCpu ["-t","Cpu: <total0> <total1>","-L","3","-H","50","--normal","#CEFFAC","--high","#FFB6B0","-w","2"] 10,
        Run Memory ["-t","Mem: <usedratio>%"] 10,
        Run Swap [] 10,
        Run Network "eth0" ["-t","eth0: <rx>, <tx>","-H","1000","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 5,
        Run Network "wlan0" ["-t","wlan0: <rx>, <tx>","-H","1000","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 5,
        Run Date "%a %_d %b %k:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %eth0%  %wlan0%  <fc=#FFFFCC>%date%</fc>"
}
