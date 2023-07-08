cls
@echo off
REM compilation de FW
cd Framework\build
javac -d . ..\src\Mapping.java
javac -d . ..\src\ModelView.java
javac -d . ..\src\Urls.java
javac -d . ..\src\Utils.java
javac -d . ..\src\FrontServlet.java

javac -parameters -d . ..\src\*.java

REM exportation
jar -cvf ..\..\fw.jar .
cd ..\..\


REM copie vers le projet de test
copy fw.jar Test\WEB-INF\lib


REM compilation du projet de test
cd Test\WEB-INF\classes
set CLASSPATH=%CLASSPATH%;C:\Users\Nandrianina\Desktop\Sprint\Sprint 4\fw.jar
javac -d . ../../src/*.java


Rem vers Test-Framework
cd ../../
REM creation de l'archive war
jar -cvf ../TFW.war .

Rem retour sur le repertoire principal
cd ../
REM copie vers le deploiment
copy TFW.war EC:\Program Files\Apache Software Foundation\Tomcat 10.0\webapps
