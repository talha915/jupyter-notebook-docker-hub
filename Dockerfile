# Use an official Jupyter Notebook base image
FROM jupyter/base-notebook:latest

# Set the working directory in the container
WORKDIR /app

# Copy your Jupyter Notebook file(s) and other necessary project files into the container
COPY ./notebook /app/notebook
COPY ./README.md /app
COPY ./requirements.txt /app
COPY ./data /app/data

# Install any additional dependencies if needed (e.g., pandas)
RUN pip install -r /app/requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
