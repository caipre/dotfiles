if [[ $TERM = "linux" ]]; then
   print "\033]P0111111"; # black
   print "\033]P8444444"; # gray

   print "\033]P1cd2832"; # red
   print "\033]P9cd6464"; #

   print "\033]P22a9961"; # green
   print "\033]PA71cca4"; #

   print "\033]P3e0d143"; # yellow
   print "\033]PBebe080"; #

   print "\033]P41653b0"; # blue
   print "\033]PC9cbce7"; #

   print "\033]P5cc6633"; # orange (traditionally magenta)
   print "\033]PD666666"; # mid-gray

   print "\033]P600a4cc"; # cyan
   print "\033]PE63ccd6"; #

   print "\033]P7999999"; # light gray
   print "\033]PFdddddd"; # white
   clear
fi
