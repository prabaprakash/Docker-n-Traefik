
Installing Driverless AI

    sudo dpkg -i dai_VERSION.deb

Starting Driverless AI

    sudo -H -u dai /opt/h2oai/dai/run-dai.sh

Stopping Driverless AI

    sudo pkill -U dai

    # The processes should now be stopped.  Verify.
    sudo ps -u dai

Debugging Driverless AI

    cat /opt/h2oai/dai/log/dai.log
    cat /opt/h2oai/dai/log/h2o.log
    cat /opt/h2oai/dai/log/procsy.log
    cat /opt/h2oai/dai/log/vis-server.log