# Bash-shell-scripts
Linux shell scripts - quick ref for sample tasks
More of a learning - open for contribution
For all scripts before running them ensure you have added execute permission by running: `sudo chmod +x script_name`

## List processes listening on ports for both udp and tcp protocols script
Takes a port number, then filters all tcp and udp listening processes and lists the matching ones

## Check service by name and restart it if it is not running
The script uses `systemctl` feel free to add more logic you can use other methods.

If the service being checked is stopped, then it restarts it.

Ensure you run the script with sudo rights i.e. `sudo ./check_service_status_and_restart`

## Scan parent folder and remove any node_modules directory - clean disk
Enables you to clean old `npm` projects packages and work with only the current projects
This is effective for users with small disk sizez.
Run the script with sudo right i.e. `sudo ./rm-node-modules-recursevely-from-parent-folder`
