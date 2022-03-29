git clone https://github.com/IvanciniGT/cursoJenkinsWebapp proyecto
cd proyecto
mvn compile
mvn test
mvn package
cp target/*.war CARPETA_RED