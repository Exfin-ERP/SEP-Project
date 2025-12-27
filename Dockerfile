# Stage 1: build
FROM node:18-alpine AS build
WORKDIR /app

# Install deps (use package-lock if present)
COPY package*.json ./
RUN if [ -f package-lock.json ]; then \
      npm ci --silent; \
    else \
      npm install --silent; \
    fi

# Copy source and build (allow override of build command)
COPY . .
ARG BUILD_CMD="npm run build"
ENV NODE_ENV=production
RUN ${BUILD_CMD}
LABEL authors="MANI"
# Normalize build output to /app/out (support build/ and dist/)
RUN mkdir -p /app/out && \
    if [ -d build ]; then cp -r build/* /app/out/; \
    elif [ -d dist ]; then cp -r dist/* /app/out/; \
    else echo "Warning: no build output found (expected build/ or dist/)"; fi

# Stage 2: serve with nginx
FROM nginx:stable-alpine AS prod

# Remove default nginx content and copy build output
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /app/out /usr/share/nginx/html

# Expose port used by nginx
EXPOSE 80

# Entrypoint to run nginx in foreground (container PID 1)
ENTRYPOINT ["nginx", "-g", "daemon off;"]

# Local build & run hints (execute from project root)
# Build image (tagged "exfin-ui:local"):
# docker build -t exfin-ui:local .
# Build with a custom npm build command:
# docker build --build-arg BUILD_CMD="npm run build:prod" -t exfin-ui:local .
# Run container mapping host port 3000 to container port 80:
# docker run -d --name exfin-ui -p 3000:80 exfin-ui:local
# View container logs:
# docker logs -f exfin-ui
# Stop and remove container:
# docker stop exfin-ui && docker rm exfin-ui
# Remove local image:
# docker rmi exfin-ui:local
