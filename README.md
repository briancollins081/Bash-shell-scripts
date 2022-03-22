# Bash-shell-scripts
**Feel free to contribute**

Linux shell scripts - quick ref for sample tasks

More of a learning - open for contribution

For all scripts before running them ensure you have added execute permission by running: `sudo chmod +x script_name`

## List processes listening on ports for both udp and tcp protocols script
Takes a port number, then filters all tcp and udp listening processes and lists the matching ones

## Check service by name and restart it if it is not running
The script uses `systemctl` feel free to add more logic you can use other methods.

If the service being checked is stopped, then it restarts it.

Ensure you run the script with sudo rights i.e. `sudo ./check_service_status_and_restart`

## Scan parent folder and remove any node_modules directories - clean disk
Enables you to clean old `npm` projects packages and work with only the current projects

This is effective for users with small disk size.

Run the script with sudo right i.e. `sudo ./rm-node-modules-recursevely-from-parent-folder`

## Recursively sed substitute all files in a folder and its subfolders with one command

Created a recursive sed substitution script - so that you don't have to type each files command one by one

Let's say you have a directory `project/charts/`. you can scan charts subfolder doing a substitution on each file within it and it's subfolders by running: `recursive-sed-substitution.sh $(pwd)/charts  string_to_search value_to_replace`

## paginate_with_curl_nexus_component_api search and then delete component
This script will search your nexus repo using the components api (v2) and then return the matching component id which is in turn used to delete the matched component. You may customize the delete part for your usecase.

**Example:**

**Usage:** paginate_with_curl_nexus_component_api NEXREPONAME NEXUSER NEXPASS COMPONENTNAME COMPONENTVERSION

  **Ex.** paginate_with_curl_nexus_component_api demorepo demo 'pass' democomponentname democomponentversion
