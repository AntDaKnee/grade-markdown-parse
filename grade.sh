
git clone $1
cp GradingTests.java CSE15L-Platypus/
cd CSE15L-Platypus
if [ -e MarkdownParse.java ]
then
    echo "Found MarkdownParse.java"
else
    echo "Did not find MarkdownParse.java"
fi
if [ ! -d "lib" ]
then
    echo "No lib directory dummy"
fi
javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests
