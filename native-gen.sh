if [ ! -f "classpath.conf" ]
then
  echo "File classpath.conf does not exist, run 'mvn compile'"
  exit 1
fi

MVN_CLASSPATH=`cat classpath.conf`

java -classpath native-gen-lib/frege-3.21.440-gd7ba043.jar:$MVN_CLASSPATH frege.nativegen.Main $1