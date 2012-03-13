-- xmobar config used by me
-- based on the config of Vic Fryzel

Config {
    font = "xft:inconsolota:antialias=true:pixelsize=11",
    bgColor = "#002b36",
    fgColor = "#839496",
    position = Static { xpos = 0, ypos = 0, width = 1320, height = 16 },
    lowerOnStart = True,
    commands = [
        Run MultiCpu ["-t","Cpu: <total0> <total1>","-L","3","-H","50","--normal","#839496","--high","#FFB6B0","-w","3"] 10,
        Run Memory ["-t","Mem: <used>/<cache>/<total>"] 10,
        Run Swap ["-t", "Swap: <used>/<total>"] 10,
        Run Network "eth0" ["-t","eth0: <rx>, <tx>","-H","1000","-L","10","-h","#839496","-l","#839496","-n","#cb4b16"] 9,
        Run Network "wlan0" ["-t","wlan0: <rx>, <tx>","-H","1000","-L","10","-h","#839496","-l","#839496","-n","#cb4b16"] 9,
        Run Date "%a %_d %b %k:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %eth0%  %wlan0%  <fc=#FFFFCC>%date%</fc> %battery%"
}
