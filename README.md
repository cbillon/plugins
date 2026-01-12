# Plugins check version

Linux script to check simply if installed plugins are compatible with new Moodle versions
The file format is the one obtained as output from the Moodle cli command (php uninstall_plugins.php --show-contrib)

### Pre requisite
yq must be installed

### Installation

- clone the repo:  git clone https://github.com/cbillon/plugins.git
- cd plugins
- chmod u+x plugins.sh

### Running the script

Parameters
- v Moodle version for example : 5.0
- f file contains plugins list;  see file demo as example

- ./plugins.sh -v 5.0 -f demo

Enjoy
