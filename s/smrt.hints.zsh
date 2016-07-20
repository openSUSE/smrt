# vim: ft=zsh sw=2 sts=2 et fdm=marker cms=\ #\ %s

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
