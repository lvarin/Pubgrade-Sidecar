FROM elixircloud/foca:latest

## Set working directory
WORKDIR /app

## Copy app files
COPY ./ /app

RUN cd /app \
    && pip install kubernetes \
    && pip install gitpython \
    && chmod g+w /app/app/config/

CMD ["bash", "-c", "cd /app/app; python app.py"]
