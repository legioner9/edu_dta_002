#!/bin/bash

dir=~/edu_dta_002/fl.d/0020.fl.d/_man/puml/2

cd $dir
jar_puml=~/edu_dta_002/fl.d/0021.fl.d/plantuml.jar

# java -jar ${jar_puml}
# java -jar ${jar_puml} init1.puml # G init1.png in root
java -jar ${jar_puml} init1.puml -o init1.puml.d # mkdir init1.puml.d, G init1.puml.d/init1.png
rm init1.puml.png
cat init1.puml | java -jar ${jar_puml} -pipe >init1.puml.png # G init1.puml.png in root
mkdir init1.puml.d.v2
cat init1.puml | java -jar ${jar_puml} -pipe >init1.puml.d.v2/init1.puml.png # G init1.puml.png in init1.puml.d.v2

# java -jar ${STL_D_PATH}/data.d/cdn.d/plantuml.jar -h
