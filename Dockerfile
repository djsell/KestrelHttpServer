FROM djsell/kvm:1.0.0-alpha3-10143

ADD . /opt/kestrel

# MONO_IOMAP=all is needed for restore to complete successfully
RUN /bin/bash -c "export MONO_IOMAP=all && source ~/.kre/kvm/kvm.sh && cd /opt/kestrel && kpm restore"

WORKDIR /opt/kestrel/samples/SampleApp
EXPOSE 5000
CMD [ "k", "run" ]
