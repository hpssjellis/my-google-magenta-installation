#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup.sh

# for error checking really good to run (without the # comment)
#bash setup.sh 2>&1 | tee x-output-errors.txt


sudo apt-get update

#sudo apt-get install libxml2-dev libxslt-dev python-dev

echo "Install Rscript"

sudo apt-get -y install r-base r-base-core r-base-html 
sudo apt-get -y install libmagickwand-dev


# for skflow
apt-get install libblas-dev liblapack-dev



echo "First checking the Python version"
python --version

echo "--------------------------------------------------------------"
echo ". "


echo "Now checking is pip is installed"

pip list

echo "--------------------------------------------------------------"
echo ". "


echo "next list this directory"
pwd
ls -lah  

echo "--------------------------------------------------------------"
echo "Some other useful commands are cd     cd ..      dir    ls     pwd     "
echo "."




echo "Installing PIP and Virtual Environment"

#sudo apt-get -y install python-pip python-dev python-virtualenv python-scipy

# above has issue with numpy???

sudo apt-get -y install python-pip python-dev python-virtualenv libblas-dev liblapack-dev libatlas-base-dev gfortran




echo "--------------------------------------------------------------"
echo ". "

echo "make the tensorflow environment"

virtualenv --system-site-packages ~/virtual-tf

echo "--------------------------------------------------------------"
echo ". "







echo "Activate the environemtn use deactivate to get your cursor back"
source ~/virtual-tf/bin/activate 

printf "\n\nsource ~/virtual-tf/bin/activate "  >> ~/.profile
printf "\necho 'enter   deactivate    to get out of the virtual enviroment'"  >> ~/.profile



echo "Installing a few extra packages"


#note still having issues with numpy not installing from pip and building from scratch
#tried several methods, perhaps try
#should  Install dask, numpy, and pandas
#pip install dask[dataframe]


#pip install Wand

#pip install numpy

#pip install scipy

#pip install matplotlib

#pip install pymatbridge

#pip install scikit-learn

#pip install pandas





echo "--------------------------------------------------------------"
echo ". "

echo "Now intall tensorFlow into the enviroment"

#version 0.5
#pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl

# 2016 version 0.7 Tensorflow
#sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.7.1-cp27-none-linux_x86_64.whl

# may, 2016 Version 0.8 tensorflow
#sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.8.0-cp27-none-linux_x86_64.whl


#May 13, 2016, nightly build version 0.8.? tensorflow
# this is needed for some skflow examples but causes weird behaviour with numpy and panadas
sudo pip install --upgrade http://ci.tensorflow.org/view/Nightly/job/nightly-matrix-cpu/TF_BUILD_CONTAINER_TYPE=CPU,TF_BUILD_IS_OPT=OPT,TF_BUILD_IS_PIP=PIP,TF_BUILD_PYTHON_VERSION=PYTHON2,label=cpu-slave/lastSuccessfulBuild/artifact/pip_test/whl/tensorflow-0.8.0-cp27-none-linux_x86_64.whl





#PYTHONUSERBASE=/home/ubuntu/workspace/tensorflow pip install --user --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.5.0-cp27-none-linux_x86_64.whl
#export PYTHONPATH=/home/ubuntu/workspace/tensorflow:$PYTHONPATH
#export PATH=/home/ubuntu/workspace/tensorflow/bin:$PATH


# Ubuntu/Linux 64-bit, GPU enabled. Requires CUDA toolkit 7.5 and CuDNN v4.  For
# other versions, see "Install from sources" below.
# sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.8.0-cp27-none-linux_x86_64.whl


#tar -zxf cudnn-7.0-linux-x64-v4.0-rc.tgz 
#cd cuda
#sudo cp lib64/* /usr/local/cuda/lib64/
#sudo cp include/cudnn.h /usr/local/cuda/include/








echo "--------------------------------------------------------------"
echo ". "

#echo "Unfortunately on cloud 9 Pip hides the TensorFlow folder so lets clone it for our use"
#echo "Kind of wasteful but it isn't on our computer anyway"

#deactivate

#git clone --recurse-submodules https://github.com/tensorflow/tensorflow


echo "--------------------------------------------------------------"
echo ". "







# might be installed with tensorflow
#pip install git+git://github.com/tensorflow/skflow.git

# skflow may need the following
# http://blog.davidvassallo.me/2016/03/18/lessons-learned-installing-skflow/
#pip install dask[dataframe]

# note swkflow is installed with tensorflow 0.8 so much of this code may not6 be needed.
# then use skflow by using this line
#import tensorflow.contrib.learn as skflow



echo "------------------------Tensorflow installed--------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"
echo "--------------------------------------------------------------"

echo ". "

#echo "Unfortunately on cloud 9 Pip hides the TensorFlow folder so lets clone it for our use"
#echo "Kind of wasteful but it isn't on our computer anyway"

#deactivate

#git clone --recurse-submodules https://github.com/tensorflow/tensorflow

#echo "Make a quick link to udacity example files" 

#ln -s /home/ubuntu/workspace/tensorflow/tensorflow/examples/udacity /home/ubuntu/workspace/udacity-Link


#echo "Make a quick link to skflow example files" 

#ln -s /home/ubuntu/workspace/tensorflow/tensorflow/examples/skflow /home/ubuntu/workspace/skflow-examples/skflow-link

echo "Make a link to the actual installed pip tensorflow not just the github clone"

ln -s /home/ubuntu//virtual-tf/lib/python2.7/site-packages/tensorflow /home/ubuntu/workspace/pip-tensorflow-link


#echo "Download dbpedia since it presently does not load"
#fixed with latest build
#wget https://googledrive.com/host/0Bz8a_Dbh9Qhbfll6bVpmNUtUcFdjYmF2SEpmZUZUcVNiMUw1TWN6RDV3a0JHT3kxLVhVR2M/dbpedia_csv.tar.gz -P /home/ubuntu/workspace/skflow-examples/dbpedia_data


#wget https://googledrive.com/host/0Bz8a_Dbh9Qhbfll6bVpmNUtUcFdjYmF2SEpmZUZUcVNiMUw1TWN6RDV3a0JHT3kxLVhVR2M/dbpedia_csv.tar.gz
#tar xvf dbpedia_csv.tar.gz -C /home/ubuntu/workspace/skflow-examples/dbpedia-data

#rm dbpedia_csv.tar.gz



# now bazel



#sudo apt-get install software-properties-common
#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install oracle-java8-installer pkg-config zip g++ zlib1g-dev unzip

#mkdir /home/ubuntu/workspace/bazel

#wget https://github.com/bazelbuild/bazel/releases/download/0.2.3/bazel-0.2.3-installer-linux-x86_64.sh -O /home/ubuntu/workspace/bazel/bazel-0.2.3-installer-linux-x86_64.sh
#chmod +x bazel-0.2.3-installer-linux-x86_64.sh
#./bazel-0.2.3-installer-linux-x86_64.sh --user
#export PATH="$PATH:/home/ubuntu/workspace/bazel/.bazel/bin"
#rm bazel-0.2.3-installer-linux-x86_64.sh


#sudo apt-get install bazel
#sudo apt-get upgrade bazel







sudo apt-get install software-properties-common
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer pkg-config zip g++ zlib1g-dev unzip

mkdir /home/ubuntu/workspace/bazel

wget https://github.com/bazelbuild/bazel/releases/download/0.2.3/bazel-0.2.3-installer-linux-x86_64.sh -O /home/ubuntu/workspace/bazel/bazel-0.2.3-installer-linux-x86_64.sh
chmod +x bazel-0.2.3-installer-linux-x86_64.sh
./bazel-0.2.3-installer-linux-x86_64.sh --user
export PATH="$PATH:/home/ubuntu/.bazel/bin"
rm bazel-0.2.3-installer-linux-x86_64.sh




ln -s /home/ubuntu/.bazel/bin /home/ubuntu/workspace/hidden-bazel



bazel -h



printf "\n\nexport BAZEL_HOME=/home/ubuntu/.bazel\nexport PATH=\$PATH:\$BAZEL_HOME/bin"  >> ~/.profile










# Now install magenta

git clone https://github.com/tensorflow/magenta.git



# now test bazel, where is the directory???

cd /home/ubuntu/workspace/magenta

#bazel test


#bazel build //magenta:midi_io_test
#bazel build //magenta:midi_io

# build your script (lots of midi files in a folder)
#bazel build magenta:convert_midi_dir_to_note_sequences




#The run it

#./bazel-bin/magenta/convert_midi_dir_to_note_sequences \
#--midi_dir=/path/to/midi/dir \
#--output_file=/path/to/tfrecord/file \
#--recursive
















echo "enter   deactivate    to get out of the virtual enviroment"



echo "--------------------------------------------------------------"
echo ". "


pip install --upgrade ipython
pip install --upgrade jupyter





#jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser
jupyter notebook --ip $IP --port $PORT --no-browser

# bash file stays here so no more commands will work



