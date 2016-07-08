#/bin/sh -f

# things to do for travis-ci in the before_install section

if ( test "`uname -s`" = "Darwin" )
then
  #cmake v2.8.12 is installed on the Mac workers now
  #brew update
  #brew install cmake
  echo
else
  #install a newer cmake since at this time Travis only has version 2.8.7
  echo "yes" | sudo add-apt-repository ppa:smspillaz/cmake-2.8.12
  sudo apt-get update -qq
  sudo apt-get install cmake cmake-data
  export DISPLAY=:99.0
  sh -e /etc/init.d/xvfb start
  sleep 3 # give xvfb some time to start
  # sudo apt-get install 
fi
