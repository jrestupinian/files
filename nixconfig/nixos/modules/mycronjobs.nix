{ config, pkgs, ... }:

{
  # Add configurations
  systemd.services.logseq-backup= {
  description = "backup logseq every 15 minutes";
  wantedBy = [ "multi-user.target" ];
  serviceConfig = {
    ExecStart = "/home/josee/logseqbk.sh";
    User = "josee";
    Environment = "PATH=/run/current-system/sw/bin;/usr/bin:/bin";
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
