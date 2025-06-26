## ################################# Cloud Computing oral questions ####################################à
## ######### Vallati ###########
## Section A (Initial concepts)
- Definition of Cloud Computing
- Type of service for a Cloud Provider
- General Cloud architechture
- Advantages for Cloud Computing
    > Pros for a startup
    > Pros for a big industry
- Cloud Computuing Typologies
    > Public, Private, Hybrid and Community
- Type of infrastracture for 
    > startup with cooking recipes
    > multinational company that sells biomedical devices
    > rather than the goal that you want (HA, LB, CI)

## Section B (Virtualization Technologies)
- What's Virtulization
    > Advantage
    > Virtulization of CPU
        > Change of context 
        > Trap and emulate
    > Virtualization of MMU
        > Why we use Multilevel Pages
            > Is always used frequent? 
        > Page Fault
        > Shadow Tables
    > Virtualization of I/O
    > Nested Virtualization
- Difference between Virtualization and Emulation
- Hypervisor (or VMM)
    > Typologies (Baremetal and Host)
    > Categories (Full and Para)
    > What type do you choose if you have 50k of the same VMs ? 
- Hardware-assisted virtualization
    > Adavntages (INT execution)
    > Extended Page Tables
        > Pros/Cons
    > Hardware pass through
        > Pros/Cons
        > Posted Interrupts
- Para virtualization
    - Hypercalls and how evoids emulation (Xen platform)
- Lightweight virtualization options
    > Pros/Cons rather than hypervisor virtualization
- Container
    > Difference between Container and VM

## Section C (Cloud Application)
- Cloudification 
    > Pros/Cons
    > Why can't a non-cloud app migrated to the cloud take full advantage of the benefits of being on the cloud?
- SOA
    > Advantages
    > Service Broker and others roles
    > Why offers standard message packaging
- Web Services
    > Architecture
- SOAP, REST and Indirect comunication
    > Differences from SOAP and REST
    > Which protocol do you use for Candy Crash? and for a Banking Service?
    > Protocols for module communication
- Message Broker
    > Rabbit MQ
- Message Queue
- Data replication strategy
    > Passive (Primary Backup)
    > Active 
    > Gossip
- General architecture of global application
    > How to realize application on global scale? (global and local load balancers)
        > Using LDNS and VIP differences 
        > Why we need tunnel in the load balancer
    > Eventually Consistent related to CAP Theorem
    > Bayou architecture

## Section D (Cloud Platform)
- Cloud Platform
- Openstack
    > Architecture 
    > Nova
        > Creation of a new VM on OpenStack
    > Neutron
        > Technology for Network Virtualizzation on OpenStack (VLAN, VXLAN, GRE)
        > Virtualization mechanism to create virtual network    
- DevOps 
    > Pros/Cons
- Kubernates
    > Architecture
    > How Kubernetes Apps Are Exposed Externally

## Section E (Cloud Storage)
- RIAD
- Ceph
    > Benefit of Ceph (rather than DFS, GlusterFS, NFS)
    > Ceph writing

## ######### Vallati (LAB)
- Workflow to create new container in Docker and launching
    > How does exposing a container to the outside work on Docker? What does exposing a container to the outside mean and what does this operation involve?
- What's libvirt and kvm ?
    > How does instantiating a virtual machine using libvirt and kvm work? What should I do?
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