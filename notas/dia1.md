# Qué es Jenkins

Software de automatización de tareas (escrito en JAVA) 
SI √√√√√√√√√ 
NO 

Pero además con integración con repos de código.

Jenkins es un tipo bastante inútil!
1 - No sabe hacer nada ... de nada.... Cero!!!!
2 - Jenkins no automatiza ni una tareas simple... no sabe... que no hace nada.


# Dev--->Ops

Cultura / Filosofía de la AUTOMATIZACIÓN !!!!!
Automatizar qué? TODO LO AUTOMATIZABLE EN EL MUNDO IT.
    - Planificación de tareas
    - Desarrollo
    - Empaquetado:                  Quién? Desarrollo
        Apache Ant
        JAVA: Maven, Gradle, SBT
        JS:   npm, yarn, webpack
        .net: MSBuild
        ADA:  gprbuild
        C:    make 
            AUTOMATIZAR LA COMPILACION/EMPAQUETADO DEL CODIGO DE LA APP desde UN SCM: Desarrollo ágil.
    - Pruebas                               QUIEN LAS HACIA?    Tester: Programar pruebas: Automatización
                                            QUIEN LAS HACE?     Programas
        Dinámicas: Rquieren ejecutar código
            Funcionales:
                Unitarias           - desarrollo
                    JAVA: JUnit, TestNG
                    .net: MSTest
                    python: pytest unittest
                Integración
                Sistema
                De aceptación
            No funcionales
                HA
                Estres
                Carga       JMeter LoadRunner
                UI 
                    app web:    Selenium: web.. pública                 SO?
                        chrome  ultima, penultima, antepenultima?       Android, windows7 windows8 windows 10, windows 11, iOS, macOS, Ubuntu
                        edge
                        firefox
                        opera                               Desde donde? Telefono, PC, laptop, Tablet?
                        safari
                        versión?
                    Selenium Grid... alquilo por 100$ mes.. para hacer tropetantos minutos de pruebas.
                        800-1500 combinaciones
                    app mobile:
                        appium
                    uft
                UX
        Estáticas: No requieren ejecutar código
            Medir CALIDAD DEL CODIGO: Sonarqube
    - Distribución
    - Instalación / Despliegue.     Quién las hacia?  SysAdmins
                                    Quién las hace?   Programas construidos por SysAdmins
        - Entorno de Desarrollo
        - Entorno de Integración? 
            Intregamos el código de diferentes personas y pruebas           <<<<<<<<<<<<<<      CI: INTEGRACION CONTINUA
        - Entorno de producción
                                        
        Instalación / Configuración de un entorno/app:
            - Ansible
            - Puppet
            - Chef
        
        - Cobbler / Aprovisionar Hierro -> SO
        - Maquinas virtuales: VM Ware:
            - Vagrant
        - Adquirir infraestructura: Cloud
            - Terraform
        
    - Operarlo
    - Monitorizarlo: 
        Prometheus-> Grafana
        ES + Logstash, Filebeat + Kibana

## Etapas o escalones DEVOPS: 
Desarrollo agil:            Automatizar hasta la compilación
CI: Integración continua:   Automatizar hasta la instalación y pruebas automaticas en entorno de Integración
CD: Continuous Delivery: 
        Entrega Continua:   Automatizar la puesta en mano de la ultima versión de mis software ya 
                            listo para su uso en producción a mis clientes finales
CD: Continuos Deployment:
    Despliegue continuo:    Se lo instalo yo en producción


# InfoJobs Linkedin

Perfil DEVOPS: Ti@ que configura un Jenkins o similar... y que tiene que saber un poquito de un huevo de cosas.


# Que ostias pinta Jenkins???

Orquestador... justa todo esto.
O tengo todo esto... o el jenkins mejor lo dejo en el garaje....


# Metodología en Cascada de Desarrollo de Software:

Requisitos      El dia 1 seré capaz de una toma de requisitos perfecta.
    Análisis
        Planificacion
            - Desarrollo
                - Pruebas 
                    - Documentación 
                        - Despliegue

HITO: 25 de Abril: **10 puntos acabados **

# Metodologías ágiles: SCRUM, Xtrem Programming, Lean...

Iteración: Sprint?

Objetivo que me marco de aquí a 2 semanas... **15 de Abril**: 10 puntos acabados y se lo instalo al cliente en producción

La entregas al cliente son incrementales:

Cada 2 semanas - 8 semanas le hago una entrega en producción
1º      10% de la funcionalidad: 100% funcional Las pruebas que hago aqui. las repito de ahora en adelante, en las 24 proximas iteraciones
2º      20% de la funcionalidad
3       25%

DEVOPS  <  Metodologias agiles.

# Herramientas tipo Jenkins:

TravisCI
Hudson
Github CI/CD
Gitlab CI/CD
Altassian: Jira + Confluence + Bitbucket + Bamboo
JetBrains: Krotlin, IntelliJ, Pycharm, Android Studio + TeamCity
Microsoft: Azure Devops (TFS)


Hudson -> Oracle

OpenOffice -> LibreOffice
MySQL -> MariaDB
Hudson -> Jenkins

## Opensource 

Que la comunidad tiene capacidad para visualizar el código fuente de una app...
Depende la licencia que puede hacer: GPL, MIT, APACHE

Gratis? No tiene por qué... mirad REDHAT.

Jenkins es gratis.

La gente que hace Jenkins (Cloudbees), fabrica también una versión de pago de Cloudbees Jenkins




## Contenedor

Es un entorno aislado donde ejecutar procesoS dentro de un Sitema Operativo LINUX.

Aislado en cuanto a:
- Tener su propia configuración de red: -> IP
- Tener su propio sistema de archivos (FileSystem)
- Tener limitación de acceso al HW
- Tener sus propias variables de entorno.

Los contenedores se han posicionado como la forma preferida de instalar/ejecutar software en dispositivos.
Las imágenes de contenedor se han posicionado como la forma preferida de distribuir software.
Los contenedores se crean desde imágenes de contenedor.
Esas imágenes de contenedor se generan de acuerdo a un estándar: OpenContainerInitiative (Docker)

Alternativas: Docker + Podman + Crio + ContainerD

### Ideas a desterrar:
Un contenedor = Maquina virtual 
Un contenedor tiene un ministema operativo


Puedo correr contenedores en Windows? NO
Puedo correr contenedores en MacOS?   NO
    Docker desktop for Windows/MacOS: Montaros encubiertamente una MV en vuestro ordenador... 
    con un kernel de linux... donde corren los contendores.


  App 1    | App 2  +  App3            
---------------------------
    C 1    |      C 2
---------------------------
  Gestor de Contenedores
---------------------------
 Sistema Operativo Linux
---------------------------
     Hierro - Hardware


De donde saco las imágenes de contenedor? De un registry de repositorios de imagenes de contenedor:
- Docker hub
- quay.io    < Registry de redhat

Imágen base:
En ella inyectamos un software 
        instalamos
UBUNTU:
ls
rm
mkdir
cd
cp
cat
sh
bash
apt-get
apt

FEDORA:
ls
rm
mkdir
cd
cp
cat
sh
bash
yum


Uso de Contenedores en nuestro caso:
* Instalar Jenkins en un contenedor.
* Generar agentes de Jenkins (Entornos aislado donde jenkins va a solicitar que se hagan trabajos de automatización predefinidos)
- Generar una imagen de contenedor para distribuir un software.


# Jenkins

IVAN DICE: Jenkins no sabe hacer nada!!!!

Pero va a organizar todo... Como buen mayordomo, va a encargar a otros que hagan los trabajos... y los controla.

Quiero que Jenkins compile un proyecto JAVA usando MAVEN. Qué necesito?


# MAQUINA CON JENKINS: Quién la administra? Alguien por allí.... yo no.
< git < Extraer el codigo del proyecto JAVA (repo SCM)
< java(c)  < Compila 
< maven < Solicitar la compilación

Jenkins sabe pedir a git que extraiga un proyecto de un repo? NO. Necesitamos un plugin: plugin de GIT
Jenkins sabe pedir a maven que compile un proyecto java?      NO. Necesitamos un plugin: plugin de maven

¿Qué version de JAVA y de Maven?
Desarrollador:
Mi proyecto trabaja con java 1.5
Mi proyecto trabaja con java 1.7
Mi proyecto trabaja con java 1.8
Mi proyecto trabaja con java 1.11
Mi proyecto trabaja con python 2.7
Mi proyecto trabaja con python 3.6

Maquina main - agentes: Contenedores 



mkdir -p /home/ubuntu/environment/datos/jenkins
chmod 777 -R /home/ubuntu/environment/datos
docker run -d --name mijenkins -p 8080:8080  -v /home/ubuntu/environment/datos/jenkins:/var/jenkins_home cloudbees/jenkins-enterprise
docker rm mijenkins -f 
docker run -d --name mijenkins -p 8080:8080  -v /home/ubuntu/environment/datos/jenkins:/var/jenkins_home cloudbees/jenkins-enterprise
