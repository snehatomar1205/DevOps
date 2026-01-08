# Build Stage 
FROM node:18 AS build
WORKDIR /app
COPY . .
RUN echo "Building frontend"

# Production Stage
FROM nginx:alpine
COPY --from=build /app /usr/share/nginx/html
