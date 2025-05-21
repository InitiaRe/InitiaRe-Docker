#!/bin/sh

echo "Running migration..."
go run migration/migrate.go

echo "Starting backend..."
go run .
