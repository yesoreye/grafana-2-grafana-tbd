#!/bin/sh
echo "Grafana Manager"
home_dir=`pwd`
grafana_src_url="http://35.184.24.32:3000"
grafana_dest_url="http://104.197.56.32:3000"
wizzy init
wizzy set grafana username admin
wizzy set grafana password admin
wizzy set grafana url $grafana_src_url
cat ./conf/wizzy.json
wizzy import dashboards
git add .
git commit -m "Hello"
git push
wizzy set grafana url $grafana_dest_url
wizzy export dashboards
