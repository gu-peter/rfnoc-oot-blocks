import uhd
import numpy as np
usrp = uhd.usrp.MultiUSRP("addr=10.157.161.243")
samples = 0.1*np.random.randn(10000) + 0.1j*np.random.randn(10000) # create random signal
duration = 10 # seconds
center_freq = 1e9
sample_rate = 368.64e6
gain = 0 # [dB] start low then work your way up
usrp.send_waveform(samples, duration, center_freq, sample_rate, [0], gain)