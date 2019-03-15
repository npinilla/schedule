# Schedule

1- Descargar repositorio:
<code>
  git remote add origin https://github.com/npinilla/schedule.git
  git pull origin master
</code>

2- Crear base de datos:
<code>
  rake db:migrate
</code>

3- Poblar base de datos con datos de prueba
<code>
  rake db:seed
</code>

4- Entrar a consola de rails
<code>
  rails c
</code>

5- Ejecutar main.rb dentro de la consola
<code>
  load 'main.rb'
</code>
