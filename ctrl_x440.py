import uhd
import numpy as np
import matplotlib.pyplot as plt

usrp = uhd.usrp.MultiUSRP("addr=10.157.161.243")

num_samps = 10000000 # number of samples received
center_freq = 1e9 # Hz
sample_rate = 368.64e6 # Hz
gain = 0 # dB

usrp.set_rx_rate(sample_rate, 0)
usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(center_freq), 0)
usrp.set_rx_gain(gain, 0)

# Set up the stream and receive buffer
st_args = uhd.usrp.StreamArgs("fc32", "sc16")
st_args.channels = [0]
metadata = uhd.types.RXMetadata()
streamer = usrp.get_rx_stream(st_args)
bf_sz= 10000000
recv_buffer = np.zeros((1, bf_sz), dtype=np.complex64)
# recv_buffer_max = streamer.get_max_num_samps()

# Start Stream
stream_cmd = uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
stream_cmd.stream_now = True
streamer.issue_stream_cmd(stream_cmd)

# Receive Samples
samples = np.zeros(num_samps, dtype=np.complex64)
for i in range(num_samps//bf_sz):
    streamer.recv(recv_buffer, metadata)
    samples[i*bf_sz:(i+1)*bf_sz] = recv_buffer[0]

# Stop Stream
stream_cmd = uhd.types.StreamCMD(uhd.types.StreamMode.stop_cont)
streamer.issue_stream_cmd(stream_cmd)

print(len(samples))
print(samples[0:10])
plt.figure()
plt.plot(np.abs(samples))
plt.savefig('samples.png')