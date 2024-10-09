FROM quay.io/jupyter/base-notebook

## Example of Dockerfile to extend the JupyterLab workspace by installing extra packages and libraries

# Switch to root user to install packages
USER root

#RUN apt update && \
#    apt install -y python3-dev libpq-dev

# Switch back to notebook user
# USER $NB_USER

ADD . .

RUN pip install -r requirements.txt

#ENTRYPOINT ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0", "--port=8888"]