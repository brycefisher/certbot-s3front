#!/bin/bash -eu

set -x

AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
certbot --agree-tos \
  -m "$EMAIL" \
  -a certbot-s3front:auth \
  --certbot-s3front:auth-s3-bucket "$S3_BUCKET" \
  --certbot-s3front:auth-s3-region "${REGION:-'us-east-1'}" \
  --certbot-s3front:auth-s3-directory "${DIRECTORY:-}" \
  -i certbot-s3front:installer \
  --certbot-s3front:installer-cf-distribution-id "$CLOUDFRONT_DISTRIBUTION_ID" \
  -d "$DOMAIN"
