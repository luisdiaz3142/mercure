FROM python:3.10-slim

# Install dependencies
RUN pip install --no-cache-dir pydicom

# Create working directory
WORKDIR /app

# Copy your Python script
COPY tagmap_new.py /app/

# Create the entrypoint script
RUN echo '#!/bin/bash\npython /app/tagmap_new.py $MERCURE_IN_DIR $MERCURE_OUT_DIR' > /app/docker-entrypoint.sh && \
    chmod +x /app/docker-entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/app/docker-entrypoint.sh"]