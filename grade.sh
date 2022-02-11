
git clone $1
cp GradingTests.java CSE15L-Platypus/
cd CSE15L-Platypus
javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests
