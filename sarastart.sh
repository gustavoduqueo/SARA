#!/bin/bash
# Create Python virtualenv and SARA jam project
python3 -m virtualenv /opt/SARA/
. /opt/SARA/bin/activate && /opt/SARA/bin/python3 /opt/SARA/bin/jam-project.py
# Run SARA server
/opt/SARA/bin/python3 /opt/SARA/server.py