# Selecciona una imagen base adecuada para tu aplicación
FROM python:3.10

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app



# Descarga el código de tu proyecto desde el repositorio remoto
RUN git clone https://github.com/a343013/mi_aplicacion .

# Copia el archivo "mi_aplicacion.py" al contenedor
COPY mi_aplicacion.py /app

# Especifica el comando para ejecutar tu aplicación dentro del contenedor
CMD ["python", "mi_aplicacion.py"]
