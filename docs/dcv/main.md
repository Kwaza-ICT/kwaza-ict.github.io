# Nice DCV 

Here is the step by step guide to install Nice DCV Ecosystem

## Ecosystem

 - DCV Broker
 - DCV Gateway
 - DCV Server

## DCV Server

1 - Add the following lines to the **/etc/dcv/dcv.conf** file:

```text
On Linux Amazon DCV servers, Session Manager uses a local service user named **dcvsmagent**. This user is automatically created when the Session Manager agent is installed. You must grant this service user administrator privileges for Amazon DCV so that it can perform actions on behalf of other users.

```text
[security]
administrators=["dcvsmagent"]
```



## DCV Broker

## Broker consist in: 

The Amazon DCV Session Manager Agent and Broker

 - The DCV Broker is a service that manages the connections between clients and servers. It is responsible for routing client requests to the appropriate server and managing the session lifecycle.
 - The DCV Broker is a lightweight service that can be deployed on any server in your environment. It does not require any special configuration or installation.
 - The DCV Broker is designed to be highly available and scalable. It can handle thousands of concurrent connections and can be deployed in a clustered configuration for high availability.

## How to install DCV Session Manager (Broker)

1 - The packages are digitally signed with a secure GPG signature. To allow the package manager to verify the package signature, you must import the Amazon DCV GPG key.

```shell
wget https://d1uj6qtbmh3dt5.cloudfront.net/NICE-GPG-KEY
```

2 - Import the GPG key:

```shell
gpg --import NICE-GPG-KEY
```

3 - Download the installation package

```shell
wget https://d1uj6qtbmh3dt5.cloudfront.net/2024.0/SessionManagerBrokers/nice-dcv-session-manager-broker_2024.0.457-1_all.ubuntu2404.deb
```

4 - Install the package

```shell
sudo apt install -y ./nice-dcv-session-manager-broker_2024.0.457-1_all.ubuntu2404.deb
```

5 - Check java version

```shell
java --version
```

If you have another version besides 11, then you have to specify the version on broker configuration file

6 - (Optional) Specify the Java version

```shell
sudo vi /etc/dcv-session-manager-broker/session-manager-broker.properties
```

Add the following line to the file:

```shell
broker-java-home = 11
```

7 - Restart the DCV Session Manager Broker service

```shell
 sudo systemctl start dcv-session-manager-broker && sudo systemctl enable dcv-session-manager-broker
```

8 - Place a copy of the broker's self-signed certificate in your user directory.

```shell
sudo cp /var/lib/dcvsmbroker/security/dcvsmbroker_ca.pem $HOME
```

### DCV Broker Folder location on Linux

```shell
/etc/dcv-session-manager-broker
```
