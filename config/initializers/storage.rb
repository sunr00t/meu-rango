Aws.config.update(
  access_key_id: ENV['MINIO_ROOT_USER'],
  secret_access_key: ENV['MINIO_ROOT_PASSWORD'],
  region: ENV['MINIO_REGION_NAME'],
  endpoint: ENV['MINIO_ENDPOINT']
)