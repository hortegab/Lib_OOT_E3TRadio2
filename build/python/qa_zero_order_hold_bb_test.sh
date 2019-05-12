#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export PYTHONPATH=/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/swig:$PYTHONPATH
/usr/bin/python2 /media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/qa_zero_order_hold_bb.py 
