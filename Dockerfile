FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /opt

## Step 2:
# Copy source code to working directory
COPY . .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make install 

## Step 4:
# Expose port 80
EXPOSE 8080

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

