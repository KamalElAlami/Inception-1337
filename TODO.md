# Inception 42 Project - TODO List

## Phase 1: Project Structure Setup
- [x] Create directory structure:
  ```
  srcs/
  ├── requirements/
  │   ├── mariadb/
  │   ├── nginx/
  │   └── wordpress/
  └── docker-compose.yml
  ```

## Phase 2: MariaDB Service (Start Here)
- [x] Create `srcs/requirements/mariadb/Dockerfile`
- [x] Create MariaDB initialization script
- [x] Configure database credentials and setup
- [x] Test MariaDB container standalone

## Phase 3: WordPress Service
- [x] Create `srcs/requirements/wordpress/Dockerfile`
- [x] Configure WordPress to connect to MariaDB
- [x] Set up WordPress configuration files
- [x] Test WordPress container with MariaDB

## Phase 4: Nginx Service
- [x] Create `srcs/requirements/nginx/Dockerfile`
- [x] Configure nginx as reverse proxy for WordPress
- [x] Set up TLS/SSL certificates
- [x] Configure nginx.conf for HTTPS

## Phase 5: Integration
- [x] Complete `docker-compose.yml` with:
  - [x] All three services
  - [x] Networks configuration
  - [x] Volumes for persistent data
  - [x] Environment variables
- [x] Update Makefile with build/start/stop commands
- [x] Test full stack integration

## Phase 6: Final Requirements
- [x] Ensure all containers restart on failure
- [x] Verify TLS certificates work properly
- [x] Test data persistence across container restarts
- [x] Clean up and document any custom configurations

## Notes
- Start with MariaDB as it's the foundation
- Test each service individually before integration
- Use official base images (debian:bullseye recommended)
- No pre-built images allowed - build everything from Dockerfiles