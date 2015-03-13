all:
	g++ -c -Iinclude src/Calculadora.cpp -o obj/Calculadora.o
	g++ -c -g -Iinclude src/Main.cpp -o obj/Main.o
	g++ *.o -o bin/Calculadora.bin
clean:
	rm -r obj/*.o
	rm -r bin/*.bin
	rm -r com/mx/eglobal/*.class
	rm -r *.class
so:
	g++ -fPIC -O2 -c src/Calculadora.cpp -g -Iinclude
	g++ -fPIC -O2 -c src/CalculadoraWrapper.cpp -g -Iinclude -I/usr/lib/jvm/jdk1.7.0_60/include/ -I/usr/lib/jvm/jdk1.7.0_60/include/linux
	g++ -shared *.o -o lib/libCalculadora.so
classes:
	javac com/mx/eglobal/JniCalculadoraWrapper.java
	javac main.java

