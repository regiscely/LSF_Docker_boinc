# LSF_Docker_boinc
Running Boinc in a docker container within an IBM LSF Cluster

Bsub command <br>
bsub -n 1 -app docker -a "docker(regiscely/boinc:latest)" "boinc --dir /var/lib/boinc-client --exit_when_idle  --fetch_minimal_work --allow_remote_gui_rpc --attach_project www.worldcommunitygrid.org <account_key>"
