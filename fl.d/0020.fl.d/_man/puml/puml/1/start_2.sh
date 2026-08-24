#!/bin/bash

dir=~/aer_foe/.d/.edu/puml/1

cd $dir

cat init1.puml | java -jar ~/aer_foe/.d/.cdn.ax/java/plantuml.jar -pipe > res/res.png
# java -jar ~/aer_foe/.d/.cdn.ax/java/plantuml.jar abs.puml -o dew.png.d/34.png
# java -cp /home/st/aer_foe/.d/.cdn.ax/java -jar ~/aer_foe/.d/.cdn.ax/java/plantuml.jar -h
