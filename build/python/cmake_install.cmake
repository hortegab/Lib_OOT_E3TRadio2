# Install script for directory: /media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/E3TRadio" TYPE FILE FILES
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/__init__.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/sumador.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/sum_vectors_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/amplificador_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/max_xx.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/diezmador_cc.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/Zero_Order_Hold.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/unipolar_to_bipolar_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/FFT_SDRCol_triangular.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/Averager_onate.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/time_averager_jesus.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/fft_jesus.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/averager.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/vector_average_hob.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/ej_amplificador_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/acumulador_truncado_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/decisor_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/decisor_fb.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/decisor_fi.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/delay_hob_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/v_delay.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/diezmoppenh3_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/diezma_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/usrp2usrp1_cc.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/zero_order_hold2_cc.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/zero_order_hold_bb.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/ifft_jesus.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/retrazo_ff.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/retrazo_cc.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/e_canal_BER.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/e_BERtool.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/mean_meter.py"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/python/power_meter.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/E3TRadio" TYPE FILE FILES
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/__init__.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/sumador.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/sum_vectors_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/amplificador_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/max_xx.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/diezmador_cc.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/Zero_Order_Hold.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/unipolar_to_bipolar_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/FFT_SDRCol_triangular.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/Averager_onate.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/time_averager_jesus.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/fft_jesus.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/averager.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/vector_average_hob.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/ej_amplificador_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/acumulador_truncado_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/decisor_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/decisor_fb.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/decisor_fi.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/delay_hob_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/v_delay.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/diezmoppenh3_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/diezma_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/usrp2usrp1_cc.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/zero_order_hold2_cc.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/zero_order_hold_bb.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/ifft_jesus.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/retrazo_ff.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/retrazo_cc.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/e_canal_BER.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/e_BERtool.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/mean_meter.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/power_meter.pyc"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/__init__.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/sumador.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/sum_vectors_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/amplificador_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/max_xx.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/diezmador_cc.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/Zero_Order_Hold.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/unipolar_to_bipolar_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/FFT_SDRCol_triangular.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/Averager_onate.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/time_averager_jesus.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/fft_jesus.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/averager.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/vector_average_hob.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/ej_amplificador_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/acumulador_truncado_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/decisor_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/decisor_fb.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/decisor_fi.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/delay_hob_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/v_delay.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/diezmoppenh3_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/diezma_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/usrp2usrp1_cc.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/zero_order_hold2_cc.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/zero_order_hold_bb.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/ifft_jesus.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/retrazo_ff.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/retrazo_cc.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/e_canal_BER.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/e_BERtool.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/mean_meter.pyo"
    "/media/uis-e3t/DATADRIVE1/MisGitHub/Lib_OOT_E3TRadio/build/python/power_meter.pyo"
    )
endif()

