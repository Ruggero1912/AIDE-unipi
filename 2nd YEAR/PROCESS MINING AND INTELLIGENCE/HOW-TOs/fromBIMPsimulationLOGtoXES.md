### Process Mining first steps

In order to mine new process models with Apromore and ProM you must have a process log.

For the project you have to use the process log of the simulation of the normative model.

The normative model is the AS IS version of the collapsed BPMN model of the human tasks. (it could eventually be also the TO-BE, not sure about that)

To create the process log from a BIMP simulation you have to:
1. open the normative BPMN model in BIMP
2. set the number of tokens to 100
3. set the interval between tokens to the one you used in previous simulations
4. set the number of available resources for each role you have to 10
5. set the costs of each activity to 1
6. set the duration of each activity to 1
7. set the probability of each gateway to 50% for each output
8. Click start simulation
9. Once the simulation is done download the MXML Log

Open the file in Disco, export it as csv selecting the option "add endpoints".

