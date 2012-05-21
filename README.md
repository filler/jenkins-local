jenkins-local
=============
This allows for
- fetching latest Jenkins war if not on disk
- start of Jenkins in a screen session

Also included are
- Yale Maven Application Installer
- Copy of vagrant private ssh key

#### Quickstart
    $ git clone git://github.com/filler/jenkins-local.git
    $ cp jenkins-local/jenkins.sh ~/bin
    $ jenkins.sh

#### Setup Jenkins
    $ cp jenkins-local/vagrant.key ~/.jenkins
    $ cp jenkins-local/yale-mvn-app-installer.hpi ~/.jenkins/jenkins-home/plugins

