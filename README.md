## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

**Note**: The following image link needs to be updated. Replace `diagram_filename.png` with the name of your diagram image file.  

(Diagrams/Red_Team_Network_Map.drawio)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yaml file may be used to install only certain pieces of it, such as Filebeat.

  - Ansible/install_elk.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly responsive, in addition to restricting traffic to the network.
What aspect of security do load balancers protect? They protect from overloading a particular resource which provides stailiy and uptime and ultimatly protects against DDOS attacks. What is the advantage of a jump box? The main advantages of a jump box are its extensive software library, automated backups and customizatons. It allows you to manage and access all devices within a securty zone without exposing the sub-machines to the internet/public.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
What does Filebeat watch for? Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
What does Metricbeat record? Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as: Apache.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    | Server   | 10.0.0.5   | Linux            |
| Web-2    | Server   | 10.0.0.6   | Linux            |
| Web-3    | Server   | 10.0.0.7   | Linux            |
| Elk      | Analytics| 10.0.0.8   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
174.119.xxx.xx

Machines within the network can only be accessed by jump box.
Which machine did you allow to access your ELK VM? Jump Box What was its IP address? 10.0.0.5

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 174.119.xxx.xx       |
| Web-1    | No                  | 10.0.0.5             |
| Web-2    | No                  | 10.0.0.5             |
| Web-3    | No                  | 10.0.0.5             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because... Ansible automates and simplifies repetitive, complex, and tedious operations. Everybody likes it because it brings huge time savings when we install packages or configure large numbers of servers.
What is the main advantage of automating configuration with Ansible? Time saving, free, simple, powerful. eficient and flexible. 

The playbook implements the following tasks:
- install docker.io
- install pip3
- install docker python module
- increase the vm virtual memory
- wget, start and attach to a docker

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

**Note**: The following image link needs to be updated. Replace `docker_ps_output.png` with the name of your screenshot image file.  

(Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
Web-1 - 10.0.0.5
Web-2 - 10.0.0.6
Web-3 - 10.0.0.7

We have installed the following Beats on these machines:
Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:

Filebeat - is a lightweight shipper for forwarding and centralizing log data. Installed as an agent on your servers, Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
Metricbeat - is a lightweight shipper that you can install on your servers to periodically collect metrics from the operating system and from services running on the server. Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-configuration.yml file to /etc/ansible/roles/files
- Update the hosts file to include your webservers and ELK server
- Run the playbook, and navigate to Kibana (http://[Host IP]/app/kibana) to check that the installation worked as expected and to review your data.


_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
