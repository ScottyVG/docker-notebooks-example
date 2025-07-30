# Use an official Jupyter base image
FROM jupyter/tensorflow-notebook:latest

# Set environment variables to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install additional packages
RUN pip install --no-cache-dir \
    scikit-learn \
    keras \
    tensorflow \
    pandas \
    numpy \
    matplotlib

# Set working directory
WORKDIR /home/jovyan/work

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.notebook_dir=/home/jovyan/work", "--NotebookApp.token=''"]

