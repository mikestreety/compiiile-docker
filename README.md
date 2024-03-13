# Compiiile-in-Docker

A Docker image with [Compiiile](https://github.com/compiiile/compiiile) bundled in.

For local use or in CI

## Build static docs

```
docker run -v $(pwd):/app ghcr.io/mikestreety/compiiile-in-docker
```

## Build and publish to Cloudflare

1. Get a [Cloudflare Token](https://developers.cloudflare.com/pages/how-to/use-direct-upload-with-continuous-integration/#get-credentials-from-cloudflare)
2. Go to Pages -> Create an Application and click "Create using direct upload"
3. Give it a name and click "Create Project"
4. Run the following command

```
docker run \
	-e CLOUDFLARE_PROJECT_NAME="[name from step 3]" \
	-e CLOUDFLARE_ACCOUNT_ID=[account id] \
	-e CLOUDFLARE_API_TOKEN=[cloudflare token from step1] \
	-v $(pwd):/app\
	ghcr.io/mikestreety/compiiile-in-docker-cloudflare
```
