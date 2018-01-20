# certbot-s3front

Docker Hub source for brycefisherfleig/certbot-s3front, a certbot plugin for provisioning no cost SSL certs on S3/Cloudfront static sites.

This is image is a thin wrapper around the [certbot-s3front plugin](https://github.com/dlapiduz/certbot-s3front) for certbot, the recommended LetsEncrypt client. This plugin automates the process of provisioning and renewing certificates for S3 hosted static sites which use CloudFront as a CDN.

## Why not virtualenv?

Many python developers using virtualenv and friends to manage differing python development environments, and this is a very successful approach. For developers with less familiarity with python or seeking an even simpler way to try out, deploy, or automate use of a python application like certbot-s3front, docker offers a bash one-liner that's guarranteed to work with minimal fuss.

## Usage

```
docker run \
  --rm \
  -e EMAIL='me@example.com' \
  -e S3_BUCKET=example-bucket-name \
  -e AWS_SECRET_ACCESS_KEY=abcdef0123456789EXAMPLE \
  -e AWS_ACCESS_KEY_ID=AZAEXAMPLEACCESSKEYID \
  -e CLOUDFRONT_DISTRIBUTION_ID=cloudfront-id \
  -e DOMAIN=example.com \
  -e REGION=us-east-1 \
  brycefisherfleig/certbot-s3front
```
