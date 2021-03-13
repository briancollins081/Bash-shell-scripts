# Bash-shell-scripts
Linux shell scripts - quick ref for sample tasks

For all scripts before running them ensure you have added execute permission by running: `sudo chmod +x script_name`

## List processes listening on ports for both udp and tcp protocols script
The script lists for you all the running udp and tcp processes with their ports incase you want to get the port information - which was the aim of creating it. Feel free to modify it to suit your use.
## Check service by name and restart it if it is not running
The script uses `systemctl` feel free to add more logic you can use other methods.

If the service being checked is stopped, then it restarts it.

Ensure you run the script with sudo rights i.e. `sudo ./check_service_status_and_restart`
