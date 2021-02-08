all: run
compil: classes src/*.java
	javac -cp lib/*:classes -d classes src/FordFulkersonAlgorithm.java 
	javac -cp lib/*:classes -d classes src/flow.java 
run: compil
	java -cp lib/*:classes tp.flow

classes: 
	mkdir classes

clean: 
	rm -r classes
