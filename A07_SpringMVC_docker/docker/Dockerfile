FROM openjdk:8
# Preparación en tiempo de creación de la imagen
COPY A07.war /home/app.war
COPY datos.h2.db /root/datos.h2.db
# Lo que se ejecuta cuando arranque un contenedor de esta imagen
CMD ["java","-jar","/home/app.war"]

