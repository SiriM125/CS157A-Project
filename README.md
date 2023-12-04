# PixelParade

PixelParade is a streaming service database.

## Prerequisites

Have this installed on your local machine
- [Docker](https://www.docker.com/get-started)

## Getting Started

Follow the steps below to run the Pixel Parade database using Docker:

1. Clone the repository:

    ```bash
    git clone https://github.com/SiriM125/CS157A-Project
    ```

2. Navigate to the project directory:

    ```bash
    cd CS157A-Project
    ```

3. Build the Docker image:

    ```bash
    docker build -t pixelp_image .
    ```

4. Run the Docker container:

    ```bash
    docker run -it --rm pixelp_image
    ```

## Using Docker Volumes

If you want to persist changes made to the database, you can use Docker volumes by doing the following:

1. Modify the `pixelp.db` file.

2. Rebuild the Docker image:

    ```bash
    docker build -t pixelp_image .
    ```

3. Run the Docker container with a named volume:

    ```bash
    docker run -it --rm -v pixelp_data:/app pixelp_image
    ```

This will create a volume called `pixelp_data` and mount it to the `/app` directory in the container. Changes made to the database will be persisted in the volume.
