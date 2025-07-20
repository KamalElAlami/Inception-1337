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
- [ ] Create `srcs/requirements/wordpress/Dockerfile`
- [ ] Configure WordPress to connect to MariaDB
- [ ] Set up WordPress configuration files
- [ ] Test WordPress container with MariaDB

## Phase 4: Nginx Service
- [ ] Create `srcs/requirements/nginx/Dockerfile`
- [ ] Configure nginx as reverse proxy for WordPress
- [ ] Set up TLS/SSL certificates
- [ ] Configure nginx.conf for HTTPS

## Phase 5: Integration
- [ ] Complete `docker-compose.yml` with:
  - [ ] All three services
  - [ ] Networks configuration
  - [ ] Volumes for persistent data
  - [ ] Environment variables
- [ ] Update Makefile with build/start/stop commands
- [ ] Test full stack integration

## Phase 6: Final Requirements
- [ ] Ensure all containers restart on failure
- [ ] Verify TLS certificates work properly
- [ ] Test data persistence across container restarts
- [ ] Clean up and document any custom configurations

## Notes
- Start with MariaDB as it's the foundation
- Test each service individually before integration
- Use official base images (debian:bullseye recommended)
- No pre-built images allowed - build everything from Dockerfiles