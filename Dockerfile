FROM derekslager/mono:3.8.0

RUN apt-get update && apt-get install -y libgdiplus
RUN ln -s /usr/lib/libgdiplus.so /usr/local/lib/libgdiplus.so
RUN curl -L http://track.opensimulator.org/link_counter.php?url=http://opensimulator.org/dist/opensim-0.8.0.1.tar.gz -s | tar xzvf -

WORKDIR /opensim-0.8.0.1/bin
ENTRYPOINT mono OpenSim.exe