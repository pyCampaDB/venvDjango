
#Use the official image of Python
FROM python:3.11.0-slim

#Establised your work directory
WORKDIR /app

# Install venv and create a virtual environment
RUN python -m venv /app/venv

# Activate the virtual environment
ENV PATH="/app/venv/bin:$PATH"

RUN pip install Django

#Install requirements.txt dependencies (if you need it)


# Install Jupyter (if you need it)


# Copy all the files
COPY . /app

# Expose the port 8888 for Jupyter
EXPOSE 8888

# Environment variable (optional)
ENV NAME VirtualEnvironment

# Command to run the application, ensure it runs within the virtual environment
CMD ["python", "virtualEnvironment.py"]
