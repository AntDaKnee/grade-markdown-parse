
git clone $1
if [ -e MarkdownParse.java ]
then
    echo "ok"
else
    echo "nok"
fi
cp GradingTests.java CSE15L-Platypus/
cd CSE15L-Platypus
javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests
