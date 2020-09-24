# Windscribe CLI (v1.4) completion for fishshell

set -l commands status account connect disconnect examples firewall lanbypass locations login logout port protocol proxy sendlog speedtest viewlog

complete -c windscribe -f -d "Windscribe VPN"

complete -c windscribe -l help -d "Print help"
complete -c windscribe -x -n "not __fish_seen_subcommand_from $commands" -a "$commands"

# complete -c windscribe -n "__fish_seen_subcommand_from connect" -a "BEST (windscribe locations | sed 's/\s\s.*\$//')"
complete -c windscribe -n "__fish_seen_subcommand_from connect" -a 'BEST (windscribe locations | awk \'BEGIN{FS="  +"}NR!=1{print $2}\')'

complete -c windscribe -n "__fish_seen_subcommand_from firewall" -a "on" -d "Enable firewall"
complete -c windscribe -n "__fish_seen_subcommand_from firewall" -a "off" -d "Disable firewall"

complete -c windscribe -n "__fish_seen_subcommand_from protocol" -a "UDP TCP STEALTH"

complete -c windscribe -n "__fish_seen_subcommand_from port" -a "443 80 53 123 1194 54783"

complete -c windscribe -n "__fish_seen_subcommand_from lanbypass" -a "on" -d "Allow LAN traffic when firewall is ON"
complete -c windscribe -n "__fish_seen_subcommand_from lanbypass" -a "off" -d "Block LAN traffic when firewall is ON"

# todo proxy subcommand
