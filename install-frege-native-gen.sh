CURR_DIR=`pwd`
NATIVE_GEN_VERSION=1.0-SNAPSHOT
NATIVE_GEN_ZIP=native-gen-${NATIVE_GEN_VERSION}.zip
NATIVE_GEN_JAR=native-gen-${NATIVE_GEN_VERSION}.jar
cd /tmp
if [ ! -f $NATIVE_GEN_ZIP ]
then
	echo "========================================"
	echo " Download $NATIVE_GEN_ZIP"
	echo "========================================"
	wget https://github.com/Frege/native-gen/releases/download/v1.0-snapshot.2/$NATIVE_GEN_ZIP
else
	echo "========================================"
	echo " $NATIVE_GEN_ZIP alredy available"
	echo "========================================"
fi
unzip -o $NATIVE_GEN_ZIP 
mvn install:install-file -Dfile=$NATIVE_GEN_JAR -DgroupId=com.github.frege -DartifactId=native-gen -Dversion=${NATIVE_GEN_VERSION} -Dpackaging=jar
cp types.properties $CURR_DIR/
cp lib/frege-3.21.440-gd7ba043.jar $CURR_DIR/native-gen-lib
cd $CURR_DIR