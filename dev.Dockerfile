FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
RUN apt-get update && \
    apt-get install -y cmake && \
    pip install dlib && \
    apt-get remove -y cmake && \
    rm -rf /var/lib/apt/lists/*
RUN pip install keras pillow tqdm requests
CMD source /etc/bash.bashrc && \
    jupyter notebook --notebook-dir=. --ip 127.0.0.1 --no-browser --allow-root