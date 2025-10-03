{ config, pkgs, ... }:

{
  # Add configurations
  systemd.services.logseq-backup= {
  description = "backup logseq every 15 minutes";
  wantedBy = [ "multi-user.target" ];
  serviceConfig = {
    ExecStart = "/home/josee/logseqbk.sh /dev/null 2>&1";
    User = "josee";
    Environment = "HOME=/home/josee";
    };
  };
  
  systemd.timers.logseq-backup-timer = {
    description = "Timer for my script";
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "*:0/15";  # This runs the script every 15 minutes
      Persistent = true;
    };
  };



}
