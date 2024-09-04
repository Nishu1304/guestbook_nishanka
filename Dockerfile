# Use the official Go image as the base image
FROM golang:1.18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go project into the container
COPY . .

# Build the Go application
RUN go build -o guestbook

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["./guestbook"]
