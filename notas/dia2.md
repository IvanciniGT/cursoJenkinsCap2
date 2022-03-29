
Job, Project, Pipeline  |
Proyecto, Tarea         |       Script que monto en Jenkins para llamar/ejecutar unas automatizaciones que alguien ha montado

1 - Definir el script
2 - Ejecutar ese script : BUILD - Ejecución
                            V
                            ----Compilación---- Ejecución
                            
Jenkins que sabe hacer? NADA

Y si quiero que compile un proyecto java con maven?
-JAVA    |
-MAVEN   | Herramientas / Tools
Plugin para que Jenkins sepa hablar con Maven
-GIT
Plugin de GIT


Maquina
    SO Linux
    Contenedor mijenkins********
        proceso Jenkins MAIN - Principal
        Aquí es posible crear hasta 2 EJECUTORES (o 17)
    
    Pool de ejecutores
    
    
    
Encolando trabajos COLA: FIFO
-----------------------------
Hay que ejecutar el script 1
Hay que ejecutar el script 5
Hay que ejecutar el script 14

REGLA IMPORTANTE: 
Los trabajos no queremos que se ejecuten en el mismo entorno / computadora donde corre jenkins
    - Evitar bloquear a Jenkins / distribuir carga
    - Para ejecutar un job / trabajo... necesito algo? algo???? 800 cosas
        eso están en la máquina del jenkins instalado? y en las versiones que yo quiero? Ni de broma
    - Seguridad
    





Qué es un script?
Tipo de software



# Software:
  Automatizar
    ^
Script          Pensado para ejecutar una secuencia de tareas sin mediación humana... más allá de una configuración inicial.
                Y cuando las ejecuta acaba.
                    bash
                    python
                    psh
                    
Daemon          Proceso que corre indefinidamente en segundo plano
                    Normalmente reservamos el nombre, para aquellos procesos que no están a la escucha de otros programas
Servicios       Tipo de demonio... que está a la espera de solicitudes por parte de otros programas.
Comandos        Es un programa que cona parametrización ejecuta una tarea concreta y acaba
Libreria
Driver

--------------------  DE AQUI HACIA ABAJO NO VA EN CONTENEDORES VVVVV
Aplicación      Pensado para interacturar en primer plano con humanos apretando botones, raton... ui
                Nunca acaba... se ejecuta indefinidamente... hasta que alguien la cierra.
Kernel






Job de Jenkins = Script
-----------------------
Datos generales: 
    Descripción 
    Parametros
    ....
Disparadores: Triggers: Cuándo se debe ejecutar el script?
    Por defecto TODO SCRIPT SE PUEDE EJECUTAR MANUALMENTE
    Pero podemos PROGRAMAR su ejecución
        En función de eventos:
            Los lunes a las 9am
            Cuando haya un cambio en el SCM
            
Pasos: Steps:
- Las llamadas a automatismos YA PRECREADOS que quiero "automatizar"
    compilar un proyecto java : MAVEN pom.xml

javac < humanos, desarrolladores
.java -> compilación -> .class


Proyecto JAVA
    pom.xml < MAVEN
        war : Aplicación WEB desarrollada en Java y que necesitará para su ejecución de :
            Un servidor de apps web JAVA: 
            
            
maven
    mvn
        GOALs
            compile
            test-compile
            test
            package
            clean

Qué me aporta maven?
    Automatiza el qué?  compilación
                        ejecución de pruebas unitarias... realizadas por un desarrollador siguiendo un framework: JUNIT
                            generación de un ifnroem de pruebas
                        empaquetado: war

Para que vale jenkins?
$ mvn compile
$ mvn test-compile
$ mvn test
$ mvn package

-------------------
dale.maven.sh
-------------------
#!/bin/bash
mvn compile
mvn test-compile
mvn test
mvn package
-------------------

Jenkins ->  mvn compile
            mvn test
            mvn package
            
Jenkins ->  dale.maven.sh -> mvn ? 

Jenkins -> Sonarqube
Jenkins -> mvn -> Sonarqube



Workspace: CARPETA ASOCIADA A UN PROYECTO (NO A UNA EJECUCION)
TODAS LAS EJECUCIONES COMPARTEN WORKSPACE
ORIGINALMENTE EL WORKSPACE SE CREA VACIO.
Las ejecucaciones podrán ir poniendo cosas alli... que se mantendrán... hasta que se borren
/workspace/Estilo libre - 1

Me interesa que se queden alli las cositas?
Si es un log igual si...
Pero si vuelvo a ejecutar y el log era importante.. lo voy a perder... por que se va a pisar con el nuevo...

----------------------------------
Imagina que quiero sacar una app java / maven de un repo git ... y quiero compilarla y empaquetarla con maven.

Que vamos a tener el WorkSpace?  :|

clonado repo
    src
    target
        surefire-reports/*.xml
        *.war
    pom.xml
------------------------------------
Los informes de prueba se irán machacando.... eso me interesa. Ni de coña !!!!!!
Y el WAR...                                                    Ni de coña !!!!!!!!!

Las cosas que para mi sean importantes.... las guardaré como ORO EN PAÑO !!!!
------------------------------------
Entre una ejecucion y otra... Me interesa borrar el WorkSpace?

Ventajas de borrarlo antes de ejecutar:
- Cada vez tengo un entorno limpio
Ventajas de borrarlo después de ejecutar:
- Cada vez tengo un entorno limpio
- Asi no me ocupa espacio

Inconvenientes de borrar?
- Tarda más tiempo... cuanto más??? Yo que se? depende
    - Tengo que hacer el clonado de un repo de 200Mb ... 5 minutos
        - La proxima vez... si ya existe ese clonado... que se hace? 
            - Se trae solo los cambios.... 1Mb 
