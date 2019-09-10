# Cheíl test:
 + Autor: Heilner Garcia
 + Email: heilnergarcia@gmail.com
 
### Instalación y ejecución:

        $ composer install
        $ npm install && npm run watch
        $ php artisan migrate
        $ php artisan serve
 
### Notas:

* Se ha minificado el código para producción en la carpeta public/js public/css

* Se ha usado vue para las búsquedas las cuales llevan a una página de muestra de hotel

* El script para generar la base de datos mysql se encuentra en la carpeta /mysql/cheiltest.sql este contiene 10 hoteles de prueba

* Para poder usar el "sistema administrativo" de hoteles es necesario crear una cuenta nueva

+ Se ha implementado Axios como interfaz REST solo para busquedas (vue)

+ Curiosidad: Los hoteles y la información contenida en el sql son reales

#### Si existe la pregunta: 
+ ¿Porque no usar vue en toda la página?:
    + El SEO es importante en cualquier producto final, al punto de ser crítico en la mayoría de los casos, los frameworks reactivos Angular/React/VueJS que no implementan server-side rendering dificultan la acción de los spiders-bots causando un gran impacto en el tráfico y por ende en el capital requerido para obtener una venta.
    
+ ¿No has usado .Net?
    + No, no es un lenguaje que domine a tal punto como para crear un servidor desde cero con este, sin embargo, de haber querido, habría podido usar código de otros proyectos que lo implementan y modificarlo a la necesidad, sin embargo he evitado totalmente usar este tipo de prácticas y he optado por usar PHP-Laravel como backend como lo acordado en la entrevista.
