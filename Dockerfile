# Resultado do curso FullCycle.
FROM nginx:latest

WORKDIR /app

RUN apt-get update

COPY html /usr/share/nginx/html

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]

