# installs latest jenkins war + spawns in screen

# where do we want jenkins war to dump to
export JENKINS_PATH=$HOME/.jenkins

# what port should jenkins listen on
export JENKINS_PORT=1337

# make sure war destination is there
if [ ! -d $JENKINS_PATH ] ; then
  mkdir $JENKINS_PATH
fi

# make sure war is there. if not, fetch.
if [ ! -f $JENKINS_PATH/jenkins.war ] ; then 
  curl -L -o $JENKINS_PATH/jenkins.war http://mirrors.jenkins-ci.org/war/latest/jenkins.war
fi

# fire up jenkins in screen
screen -S jenkins -RR \
env JENKINS_HOME=$JENKINS_PATH/jenkins-home \
java -jar $JENKINS_PATH/jenkins.war --httpPort=$JENKINS_PORT
