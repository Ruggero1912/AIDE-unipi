## ################################# Cloud Computing oral questions ####################################à
## ######### Vallati ###########
- Cloud Computuing
    > Pros for a startup
    > Pros for a big industry
    > Public, Private, Hybrid and Community
- General cloud architechture
- What's Virtulization
    > Advantage
    > Virtulization of CPU and RAM (change of context)
    > Virtualization of I/O, MMU etc..
    > Nested Virtualization
- Page Fault
- Why we use Multilevel Pages
- Trap and emulate
    > Is always used frequent?
- Hardware-assisted virtualization
- Hardware pass through
    > Pros/Cons
- Ceph
    > Ceph writing
    > Benefit of Ceph (rather than DFS, GlusterFS, NFS)
    > RIAD
- DevOps 
    > Pros/Cons
- Service Broker
- Kubernates
    > Architecture
    > How Kubernetes Apps Are Exposed Externally
- Why can't a non-cloud app migrated to the cloud take full advantage of the benefits of being on the cloud?
- Gre technology (neutron controller, agent ...)
- Openstack
    > Architecture
    > Gre 
    > Creation of a new VM on OpenStack
- Technology for Network Virtualizzation on OpenStack
    > Methodology (VLAN, VXLAN, GRE, TUNNELING)
    > Neutron
- Cloud Platform
- General architecture of global application
    > How to realize application on global scale? (global and local load balancers)
    > Eventually Consistent
    > Bayou architecture
    > Why we need tunnel in the load balancer
- Data replication strategy
    > Active
    > Passive
    > Gossip
- Message exchange (frontend backend)
    > Systems Msg Queue
    > Rabbit MQ
    > Advantages of SOA
- Message Broker
- SOAP, REST and Indirect comunication
    > Differences from SOAP and REST
    > Which protocol do you use for Candy Crash? and for a Banking Service?
    > Protocols for module communication
- Lightweight virtualization options
    > Pros/Cons rather than full virtualization
    > Pros/Cons rather than para virtualization
- Para virtualization
    - Hypercalls and how evoids emulation (Xen platform)
- Hypervisor
    > Typologies
    > Baremetal and Host
    > What type do you choose if you have 50k of the same VMs ? 
- Container
    > Difference between Container and VM
- Type of service for a Cloud Provider
- Type of infrastracture for 
    > startup with cooking recipes
    > multinational company that sells biomedical devices
    > rather than the goal that you want (HA, LB, CI)
- Virtualization mechanism to create virtual network
- Cloudification 
    > Pros/Cons
- Service-oriented architecture
    > Why offers standard message packaging
- Sequential consistency
- Over commitment

## ######### Vallati (LAB)
- Workflow to create new container in Docker and launching
    > How does exposing a container to the outside work on Docker? What does exposing a container to the outside mean and what does this operation involve?
- What's libvirt or kvm ?
    > How does instantiating a virtual machine using libvirt/kvm work? What should I do?
    > From a network perspective, how does it work? On which networks are virtual machines inserted?
- Workflow of Kubernates 
    > What is the OpenStack installation process? 
    > How do you install the OpenStack components on the various machines once added?
    > Where is "juju" run and what is it used for? What is the workflow it is used with?
    > App descriptor 
    > POD

## ######### Puliafito #########
## Map Reduce
- What's Map Reduce
- Why the higher order function must to be stateless in Map Reduce ?
- Input split 
- Partitioner
- Shuffle and Sort phase
- Combiner
    > Difference between in mapper combining
- Why we monitoring the occupation of the memory ?  
- Stripes vs Paired approach
- Join in Hadoop
- Matrix x Vector Moltiplication in Hadoop 
- Matrix x Matrix Moltiplication in Hadoop

## HDFS
- HDFS
    > What's is an DFS
    > Architecture
- Rack Locality
- Anatomy of a Reading and Writing
- Replication on HDFS 

## YARN
- Yarn
    > Architecture
- Differences between Hadoop v1 and v2/v3
    > Job Tracker
- Scheduling in Yarn
    > Delay scheduling
- Anatomy of a Map Reduce Application from Yarn
- Struggled and how to approch them ?
    > Speculative execution

## SPARK
- Spark
    > Architecture
- RDD
    > Why is immutable ?
    > Recovery of a partition
- Fault tolerance in Spark
    > What's Lineage
- Difference between Transformation and Action
- Difference between Wide and Narrow Transformation
- What's a Stage, Job and Task in Spark
- Persistence in Spark
    > Cache and persistence