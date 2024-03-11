FROM node:21.6-alpine3.19 AS image_baseline

LABEL org.opencontainers.image.source=https://github.com/mikestreety/compiiile-in-docker
LABEL org.opencontainers.image.description="Docker image containing compiiile"
LABEL org.opencontainers.image.licenses=MIT

# Install dependencies
RUN npm install -g @compiiile/compiiile@2.7.4

# Copy boot script
COPY --chmod=0755 ./scripts/image_baseline.sh /image_baseline.sh
COPY --chmod=0755 ./scripts/image_baseline.sh /run.sh

# Set the workdir and entry script
WORKDIR /app

CMD ["/bin/sh", "-c", "/run.sh"]

FROM image_baseline AS image_cloudflare

# Install additional dependencies
RUN npm install wrangler@3.32.0 -g

# Replace run script
COPY --chmod=0755 ./scripts/image_cloudflare.sh /run.sh

FROM image_baseline AS image_netlify
