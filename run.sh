if [ ! -f "classpath.conf" ]
then
  echo "File classpath.conf does not exist, run 'mvn compile'"
  exit 1
fi

MVN_CLASSPATH=`cat classpath.conf`

java -classpath target/classes:$MVN_CLASSPATH HelloWorld