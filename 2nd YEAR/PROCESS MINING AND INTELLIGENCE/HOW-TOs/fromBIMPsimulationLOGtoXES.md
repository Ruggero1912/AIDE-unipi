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

	1. Fai simulazione del bpmn del normative model (normalmente è quello AS IS) con durate a 1 sec, costi a 1 sec e risorse a 10 unità (quest'ultimo da verificare)
	2. Esporta il log della simulazione come mxml
	3. Apri il log della simulazione su disco
	4. Esporta il log della simulazione in csv da disco con la spunta per aggiungere gli endpoints
	5. 
	6. Importa in ProM il file csv
	7. 
	8. Apri in prom il file csv e fai play, clicca quindi sulla voce 

	9. 
	10. Dovrebbe venire una schermata così che mostra il csv caricato:
	11. 
	12. Ti chiederà quali attributi standard XES mappare, imposta così (aggiunto CASE ID a case column, seleziona complete timestamp a completion time, il formato del timestamp lo dovrebbe capire da sé):
	13. 
	14. Questo l'ho lasciato com'era:
	15. 
	16. Clicca finish e dovrebbe dare in uscita il file Xlog, che può essere salvato su disco
![image](https://user-images.githubusercontent.com/63967908/213411504-2aafa262-bb2e-4c12-ab6b-1d79ab96b19e.png)
