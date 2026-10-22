# Usamos una versión específica de Tomcat (No 'latest') por seguridad
FROM tomcat:10.1-jre17-alpine

# Buenas prácticas DevOps: Eliminar aplicaciones por defecto para mitigar riesgos
RUN rm -rf /usr/local/tomcat/webapps/examples /usr/local/tomcat/webapps/docs

EXPOSE 8080
CMD ["catalina.sh", "run"]
