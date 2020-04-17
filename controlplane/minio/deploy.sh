bosh deploy -d minio minio.yml \
    -o minio-ops.yml \
    -v minio_deployment_name=minio \
    -v minio_accesskey=admin \
    -v az=z1 \
    -v network=default \
    -v vm_type=small
