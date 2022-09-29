####### Plot results from AfiberPropagation.hoc
####### Han et. al doi: https://doi.org/10.1101/2021.07.14.452325

import matplotlib.pyplot as plt
import numpy as np

data = np.genfromtxt('output.dat', delimiter=',')

plt.figure(figsize=(7,7))

plt.plot(data[:,0,],data[:,2],label='Spinal nerve')
plt.plot(data[:,0,],data[:,3],label='T-Junction')
plt.plot(data[:,0,],data[:,4],label='Dorsal Root')

plt.xlabel('Time (msec)')
plt.ylabel('Potential (mV)')

plt.legend()

plt.show()