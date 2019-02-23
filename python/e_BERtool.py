#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 
# Copyright 2018 <+YOU OR YOUR COMPANY+>.
# 
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 
import numpy as np
import random
import math
import numpy
from gnuradio import gr

class e_BERtool(gr.sync_block):

    """
Calcula la curva de BER (o de SER). Para lograrlo, por las 3 entradas in0, in1, in2 espera hasta que hallan llegado N muestras, con lo cual puede obtener una primera version de la curva de BER (o de SER) de N muestras. Esa curva de BER (o de SER) se va perfeccionando en el tiempo, ya que lo anterior se repite una y otra vez, tanto como lo permita el tiempo que dure corriendo el flujograma, con lo cual va recalculando la curva de BER (o de SER) para que sea cada vez mas perfecta. 

Senales de entrada:
in0: El valor de la relación Es/No (o Eb/No) que trae cada una de las muestras que ingresan por la entrada in2
in1: es la señal de bits (o de simbolos emitidos), osea, aquellos que están antes del canal
in2: Es la señal de los bits recibidos (o de simbolos), después de pasar por un canal 

Senal de salida
Puede ser vista como una senal que cada N muestras representa la actualizacion de la curva de BER. La idea es convertirla en un vector de N muestras y graficarla mediante algo asi como un "QT GUI vector Sink" 

NOTA IMPORTANTE:
* El bloque e_canal_BER es el que se ha estado usando para generar la senal que entra por in0. Las limitaciones que eso genera son las siguientes:
   ** El canal e_canal_BER esta pensado para llevar envolvente compleja, es decir simbolos. Por lo tanto, lo que realmente se está obteniendo en una Curva de SER. Convertir eso a Curva de BER puede que no sea tan facil, necesitaria no contar con que en in1 e in2 esten las senales de bits en vez de simbolos, sino que habria que ajustar la senal destinada a la entrada in0 para que hacer que por cada bit haya un valor de Es/No o de Eb/No
   ** El bloque e_canal_BER lo que entrega es la relacion Es/No.
   ** Convertir Es/No a Eb/No es posible pero como parte de un flujogramas donde se conozca el numero de bits por simbolo (Bps), teniendo en cuenta que, en términos lineales, Eb=Es/Bps
   ** La manera en que esta hecho el bloque e_canal_BER hace que si el numero de muestras por simbolo es mayor a 1 (Sps>1), la senal Es/No sale con Sps valores por simbolo. En ese caso se requeriria aplicar algun tipo de mejora ya que nuestro bloque supone que solo hay una muestra Es/No (o Es/No) por cada muestra de senal en in1 e in2.
* las senales in1 y in2 pueden ser bits o simbolos. En el segundo caso es el que hemos usado mas, ya que las senales in1 e in2 son de tipo M-PAM. Por eso, lo que hemos estado calculando es Curva de SER. Se puede pasar facilmente a Curvas de BER, si a los bits se les aplica de-M-PAM.
 
"""

    ############################################################################################
    ##  Constructor del bloque                                                                ##
    ############################################################################################

    def __init__(self, N=17):  
        gr.sync_block.__init__(
            self,
            name='e_BERtool',
            in_sig=[np.int32, np.int8, np.int8],
            out_sig=[np.float32]
        )

        self.N=N # es el numero de puntos de la curva de SER a calcular
        self.errores = np.zeros(self.N)
        # count: cuenta el numero de muestras que ya han sido procesadas para cada punto de la BER
        self.count=0. 
        # SER: es la memoria de la ultima curva calculada
        self.SER=np.ones(self.N) 

    ############################################################################################
    ##  Lo de arriba es solo el constructor del bloque). Aqui comienza el verdadero cdigo     ##
    ############################################################################################

    def work(self, input_items, output_items):
        in0=input_items[1]
        in1=input_items[2]
        
        # L: es el tamano del vector de entrada. 
        L=len(in0) 
        
        # Barrido de los datos recibidos
        for i in range(0,L):
            k=input_items[0][i]
            self.count += np.sign(k)^1 

            # incremento el contador de errores
            self.errores[k] += int(in0[i]<>in1[i])

            # calculo la SER
            self.SER[k]=self.errores[k]/self.count
            output_items[0][i]=self.SER[k]

        return len(output_items[0])

