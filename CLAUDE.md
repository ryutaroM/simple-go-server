# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Structure

This is a simple Go web server project containing:
- `main.go` - Single file with HTTP handlers and server setup
- `go.mod` - Go module definition
- `Dockerfile` - Multi-stage Docker build configuration
- `docker-compose.yml` - Docker Compose setup with MySQL database

## Common Commands

### Local Development
- **Run the server**: `go run main.go`
- **Build the binary**: `go build -o server main.go`
- **Run the built binary**: `./server`

### Docker
- **Build Docker image**: `docker build -t simple-server .`
- **Run with Docker Compose**: `docker-compose up`
- **Run in background**: `docker-compose up -d`
- **Stop services**: `docker-compose down`

The server runs on port 8080 by default and serves:
- `/` - Home page with welcome message
- `/about` - About page

## Architecture

Single-file Go application using standard library:
- Uses `net/http` package for HTTP server functionality
- Handler functions follow standard Go HTTP handler pattern
- Main function sets up routes and starts server on port 8080

### Docker Setup
- Multi-stage build using Go 1.23 Alpine image
- Final image uses Alpine Linux with non-root user
- Includes MySQL 8.0 database service in docker-compose
- Application and database connected via Docker network