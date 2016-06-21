# my-google-magenta-installation
Getting Googles Magenta working on Cloud9 for Music Creation







June20 2016

Don'ty use this one. I only have this repository as a backup for the main repos


For linux/ubuntu use

https://github.com/hpssjellis/google-magenta-midi-music-on-linux-hello-world



For Cloud9 use

https://github.com/hpssjellis/my-tensorflow-magenta-online



For Mac use

(not made yet,since I don't own a mac computer)


June 13, 2016

This repository is for setting up Google Magenta and Tensorflow on Cloud9 http://c9.io . I am having more success working on a Linux ubuntu laptop so I have moved most of this repo to https://github.com/hpssjellis/google-magenta-midi-music-on-linux-hello-world





June 11, 2016

The **setup-linux-laptop.sh** file is installing but when running the training I am getting a legacy_linear module not found. Getting very close. Remember to get the bash files into the main magenta workspace ~/mymagenta/magenta

bit confusing since it also has another sub directory called magenat



June 9th, 2016

Like with everything Tensorflow, just getting the basics working is a challenge. So far I have **setup-on-cloud9.sh** working on cloud9 but the bazel build is over 2Gb which is the free limit on Cloud9. The file that includes most of the tensorflow full installation **setup-c9-tensorflow.sh** is just going to be bigger so it will not work.

Having some luck with **setup-linux-laptop.sh** on a linux ubuntu laptop installation. 

Tried installing on a windows computer using batch files but that is not going to succeed since Bazel does not presently install very nicely on windows.

You might want to try my Tensorflow installation on cloud 9 at https://github.com/hpssjellis/forth-tensorflow the video shows how to do it. I would really like to make a docker file of tensorflow, but getting tired of working for free.




June 6, 2016. Just found the github site for Google's Magenta Music Tensorflow site. So let's install it on Cloud 9

https://github.com/tensorflow/magenta


Trying to make bash files to install bazel, tensorflow and magenta






Use at your own risk

By Jeremy Ellis

Maker http://rocksetta.com

Twitter @rocksetta

