## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Elk-Stack Diagram](https://github.com/sanded11/CyberSecurity-Bootcamp/blob/main/Diagrams/ELK-Stack%20Diagram.png?raw=true)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

![Filebeat-playbook.yml file](https://github.com/sanded11/CyberSecurity-Bootcamp/blob/main/Ansible/filebeat-playbook.yml.txt)
  
This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly secured and available, in addition to restricting access to the network.

Why use a Load Balancer and Jump-Box?

Load Balancers are integral parts of todays networks. They help in preventing DDoS attacks by disbursing traffic to different servers. Doing so provides a greater chance of a single server becoming overworked or unreliable due to a high volume of traffic. 

The use of the Jump-Box Provisioner VM is to reduce the machines capable of being compromised by malicious attackers. It provides secure access to multiple machines without exposing the other containers to the public. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.

What does filebeat watch for? 
Filebeat watches and monitors log events and forwards them to Elasticsearch or logstash for indexing. 

What does metricbeat record? 
Metricbeat records metrics from the OS and OS services and forwards them for analyzing to Elasticsearch and logstash. 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| WEB-1    | Server   | 10.0.0.6   | Linux            |
| WEB-2    | Server   | 10.0.0.7   | Linux            |
| ELK-Web  | Monitor  | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
5601 Kibana Port

Machines within the network can only be accessed by Jump-Box Provisioner.

Machines that had access to the ELK VM: 
Jump-Box Provisioner 
Private IP: 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | YES                 | 52.167.45.163        |
| WEb 1    | NO                  | 10.0.0.4             |
| Web 2    | NO                  | 10.0.0.4             |
| ELK Web  | NO                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because Ansible makes simplicity out of repetitive, complex, and tedious operations. 

The playbook implements the following tasks:
> Install docker.io
> Install pip3
> Install VM
> Download and launch docker
> Install Docker python module

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
