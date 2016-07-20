# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

# Copyright (C) 2016 SUSE LLC
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

declare -gr hints_yast_online_update="$(<<EOF
Apply this update with 'yast2 online_update' and make sure that:
- this update is selected exclusively
- the update program restarts
- previously uninstalled and needed updates can be installed
EOF
)"

declare -gr hints_browser="$(<<EOF
Use this bookmark for testing the browser:
   http://w3.suse.de/~rd-qa/Repository/Helper/browser-test/
EOF
)"

declare -gr hints_pdfviewer="$(<<EOF
Use the documentation at
   https://wiki.innerweb.novell.com/index.php/RD-OPS_QA/HowTos/PDF-Testing
for testing the PDF render capabilities.
EOF
)"

declare -gr hints_minimal_system="$(<<EOF
Install this update on a minimal system without any other maintenance updates applied and check that:
- the system can successfully reboot without (new) errors
- you can install all released maintenance updates
EOF
)"
