bosh  deploy -d concourse concourse.yml \
  -l ../versions.yml \
  -o operations/static-web.yml \
  -o operations/basic-auth.yml \
  -o operations/credhub.yml \
  -o operations/worker-ephemeral-disk.yml \
  -o operations/privileged-http.yml \
  -o operations/privileged-https.yml \
  -o operations/tls.yml \
  -o operations/tls-vars.yml \
  --var local_user.username="admin" \
  --var local_user.password="((admin-password))" \
  --var web_ip=10.100.26.10 \
  --var external_url=https://ci.example.com \
  --var external_host=ci.example.com \
  --var network_name=default \
  --var web_vm_type=default \
  --var db_vm_type=default \
  --var db_persistent_disk_type=50GB \
  --var worker_ephemeral_disk=50GB_ephemeral_disk \
  --var worker_vm_type=default \
  --var deployment_name=concourse \
  --var azs=[z1] \
  --var credhub_url=$CREDHUB_SERVER \
  --var credhub_client_id=$CREDHUB_CLIENT \
  --var credhub_client_secret=$CREDHUB_SECRET 

# TLS
# -o operations/privileged-http.yml \
# -o operations/privileged-https.yml \
# -o operations/tls.yml \
# -o operations/tls-vars.yml \
# -v external_host ci.example.com

# In case of internal proxy:
# -o operations/http-proxy.yml \
# --var http_proxy_url="http://proxy:8080" \
# --var https_proxy_url="http://proxy:8080" \
# --var no_proxy="10.0.0.1,.example.com" \
