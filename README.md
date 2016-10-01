# `people_msgs_rl`

[![Build Status](https://travis-ci.org/UC3MSocialRobots/people_msgs.svg)](https://travis-ci.org/UC3MSocialRobots/people_msgs_rl)

![foo](doc/divulgacion.png)

User detection, recognition and tracking is at the heart of Human Robot
Interaction, and yet, to date, no universal robust method exists for being
aware of the people in a robot surroundings. The presented work aims at
importing into existing social robotics platforms different techniques, some
of them classical, and other novel, for detecting, recognizing and tracking
human users. These algorithms are based on a variety of sensors, mainly
cameras and depth imaging devices, but also lasers and microphones. The
results of these parallel algorithms are then merged so as to obtain a
modular, expandable and fast architecture. This results in a local user
mapping thanks to multi-modal fusion.

This package contains the definition of the messages and services.

How to install
==============

Dependencies: please run the ```rosdep``` utility:

```bash
$ sudo apt-get install python-rosdep
$ sudo rosdep init
$ rosdep install people_msgs_rl --ignore-src
```
