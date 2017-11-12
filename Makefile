# Ensimag 2A POO - TP 2015/16
# ============================
#
# Ce Makefile permet de compiler le test de l'ihm en ligne de commande.
# Alternative (recommandee?): utiliser un IDE (eclipse, netbeans, ...)
# Le but est d'illustrer les notions de "classpath", a vous de l'adapter
# a votre projet.
#
# Organisation:
#  1) Les sources (*.java) se trouvent dans le repertoire src
#     Les classes d'un package toto sont dans src/toto
#     Les classes du package par defaut sont dans src
#
#  2) Les bytecodes (*.class) se trouvent dans le repertoire bin
#     La hierarchie des sources (par package) est conservee.
#     Pour un package (ici gui.jar), il est aussi dans bin.
#
# Compilation:
#  Options de javac:
#   -d : repertoire dans lequel sont places les .class compiles
#   -classpath : repertoire dans lequel sont cherches les .class deja compiles
#   -sourcepath : repertoire dans lequel sont cherches les .java (dependances)

all: compileBalls compileCells compileConway compileImmigration compileSchelling

compileBalls:
	javac -d bin -classpath bin/gui.jar -sourcepath src src/TestBalls*.java

compileCells:
	javac -Xlint -d bin -classpath bin/gui.jar -sourcepath src src/TestConway.java
	javac -Xlint -d bin -classpath bin/gui.jar -sourcepath src src/TestImmigration.java
	javac -Xlint -d bin -classpath bin/gui.jar -sourcepath src src/TestSchelling.java

compileConway:
	javac -Xlint -d bin -classpath bin/gui.jar -sourcepath src src/TestConway.java

compileImmigration:
	javac -Xlint -d bin -classpath bin/gui.jar -sourcepath src src/TestImmigration.java

compileSchelling:
	javac -Xlint -d bin -classpath bin/gui.jar -sourcepath src src/TestSchelling.java

# Execution:
# on peut taper directement la ligne de commande :
#   > java -classpath bin TestGUI
# ou bien lancer l'execution en passant par ce Makefile:
#   > make exeGUI

exeGUI:
	java -classpath bin:bin/gui.jar TestGUI

exeBalls:
	java -classpath bin:bin/gui.jar TestBallsSimulator

exeConway:
	java -classpath bin:bin/gui.jar TestConway

exeImmigration:
	java -classpath bin:bin/gui.jar TestImmigration

exeSchelling:
	java -classpath bin:bin/gui.jar TestSchelling

clean:
	rm -rf bin/*.class
	rm -rf src/*.class
	rm -rf javadoc

javadoc:
	mkdir javadoc
	javadoc -d javadoc -classpath bin:bin/gui.jar src/* MultiagentSystemsModeling
