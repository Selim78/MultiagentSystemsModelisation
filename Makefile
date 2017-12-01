all: compileBouncingBalls compileCells compileConway compileImmigration compileSchelling compileBoids compileBalls

compileBouncingBalls:
	javac -d bin -classpath bin/gui.jar -sourcepath src src/TestBouncingBallsSimulator.java

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

#----------------------------------------------------------------------------------#

exeGUI:
	java -classpath bin:bin/gui.jar TestGUI

exeBouncingBalls:
	java -classpath bin:bin/gui.jar TestBouncingBallsSimulator

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
