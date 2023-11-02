Sistema de Administración y Registro de Actividades - SARA

1. Para iniciar el servidor:

$ python D:\GDUQUEO\Personal\Sara\SARA\server.py [port]

Usuarios:

1. Developer: admin / kV7Dj4bu.
2. Administrator: gduqueo / kV7Dj4bu.
3. Consulta: consulta / consulta

Documentación:

Docker:

1. Token: dckr_pat_8MiyibEOqYd1cAWr6nACsmuDtYY

$ docker build -t gustavoduqueo/sara:latest https://github.com/gustavoduqueo/SARA.git

$ docker run -d --name sara -p 8081:8080 -it  gustavoduqueo/sara:latest
