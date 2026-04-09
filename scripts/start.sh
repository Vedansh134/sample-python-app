#!/bin/bash
cd /home/ec2-user/myapp
pkill -f "python3 app.py" || true
nohup python3 app.py > app.log 2>&1 &