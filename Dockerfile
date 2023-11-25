# Use an official SQLite image as a base
FROM alpine:latest

# Install SQLite on the Alpine image
RUN apk --update add sqlite

# Set the working directory inside the container
WORKDIR /app

# Copy the SQLite database file into the container
COPY pixelp.db /app/

# Specify the command to run when the container starts
CMD ["sqlite3", "pixelp.db"]