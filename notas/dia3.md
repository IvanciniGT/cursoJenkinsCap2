
GIT

# Qué es git? SCM distribuido: Multiples repositorios para un proyecto: TODOS DISTINTOS ENTRE SI.
                  centralizados: cvs, subversion

# git? Linus Torwalds

Distintas zonas:
- Workspace - Directorio de trabajo
- Área de preparación o de staging
- Repo local
-------------------------------------
- Repo remoto o 27

Proyecto... con sus archivos y sus carpetas.
El guardado de información con caracter PERSISTENTE se hace mediante: COMMIT

Commit: En git es una foto completa del proyecto en un momento del tiempo. No un conjunto de cambios. 
        Una foto COMPLETA del proyecto

Donde se guardan esos commits? En ramas -> Repositorios

Rama: Branch?   Lineas paralelas en el tiempo de evolución de mi proyecto <<<< Caracteristica clave de un SCM

Sistema de copias de seguridad... backup.... Copias una detras de otra en el tiempo... secuenciales...
                                            COMMIT

SCM: Branches: ramas: Disponer de varias lineas paralelas en el tiempo donde guardar commits.

Sistema de backups: Secuencia en el tiempo de commits.
Repo SCM:           Multiples secuencias en el tiempo de commits.

Backup Momento 1 ... Backup Momento 2.... Backup Momento 3


Sagrada linea temporal: main
        lienas temporales : ramas : VARIANTES

Commit 1..... Commit 2.......Commit 3       ficheroA.txt Loki cococrilo
              Commit 7.......Commit 14      ficheroA.txt Loki abuelete
                             Commit 23      ficheroA.txt Loki loki

Loki? AVT

Jenkinsfile v1.0.0          v1.0.1
                            v1.1.0


Jenkinsfile  ------- Ivan (selenium)------
             ------- Conchi (appium)--/
             ------- Lucas (jmeter)------
             
Principal main master truck ----------2----------------- Se entiende que lo que hay aqui está apto para producción.
                                    /                     Nunca se hace un commit.
Desarrollo  ---------------1------2---------3-----------

Llevar Commits de una rama a otra: merge (clasica... conservadora... ) rebase (agresiva... fresquita...)

    
                            Repo remoto origin
                            Ramas
                                main
                                desarrollo
                                |    C1
                                |
---------------------------------------------------------------------
|                                                                   |
IvanPC                                                              Servidor de Jenkins
|- Carpeta                                                          |- Carpeta
|       ficheritos                                                  |    unos ficherotes
|- Area de Prep                                                     |- Area de Prep                                     
|       fichero                                                            | 
|- Repo local                                                       |- Repo local
    Ramas:                                                              Ramas:
        main                                                                main
        desarrollo                                                          desarrollo - C1
            C1: algunos ficheritos                                          mechu
        remoto/main                                                         remoto/desarrollo
        remoto/desarrollo                                                       C1
            C1: algunos ficheritos

desarrollo                                                              git fetch + git merge = git pull
    git push