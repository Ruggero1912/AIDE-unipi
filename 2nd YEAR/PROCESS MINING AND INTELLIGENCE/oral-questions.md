## ################################# Process Mining and Intelligence  #################################
- What is the goal of the process landscape
    > Indica una visione generale della factory dove è possibile comprenderne i concetti principali e dividerla in sottoprocessi, dove ogni sottoprocesso che possono 
      essere suddivisi quando viene creato un milestone (evento significativo per il processo che porti risultati concreti) o quando vi è un cambio di token.
    > Una mileston è definita da alcuni parametri:
        > Countable e Discreta
        > Essenziale per il sistema, che quindi è necessario
    > "Create Prepared Session" --- (N:1) ---> "Collect Prepared Session" la cardinalità indica che per ogni N volte che eseguo la prima attività, ne consegue 
       una sola esecuzone della seconda.
    > La cardinalità che cambia tra "Train Classifier" e "Validate Classifier" non cambia il sottoprocesso perché in quel caso non abbiamo nè una milestone, nè un cambio di token
    > Come suddivido le attività tra di loro?
        > Dalla narrative, frase per frase e in quel modo di estraggono le attività, quindi analizzare i verbi che le definiscono, gli attori ed i connettivi e lo traduco in una semi-normal notation con anche l'inizio la fine
- Sketeton
    > Perché non si rimuovono le prepared session dal database del calibartion set?
        > Perché se il data balancing va male, e devo aggiungere altre sessioni, allora le devo tenere per il nuovo ciclo dopo averne ottenute di nuove, perché le sessioni che ci sono già possono comunque servirmi per bilanciare successivamente il dataset.
        > In ingestion invece vengono cancellate ogni volta perché i record di sessioni diverse tanto non devono unirsi, quindi devo cancellarle. 
    > Chi è il target quando si invia il messaggio al messaging system?
        > Configuration Recieved viene inviato a tutte le task umane di configurazione tramite il gateway parallelo.
    > Le task di configurazione sono in parallelo nello sketeton, ma successivamente sono state messe in serie, perché?
        > Perché a noi nella simulazione ci interessa sapere il costo totale del processo, e se li mettiamo in parallelo i tempi che otteniamo sono diversi. Infatti questo perché noi consideriamo come costi i tempi totali, e quindi se le task fossero in parallelo i tempi si ridurrebbero alla singola task più lunga. 
    > Cosa sono le task di business rule 
        > Sono quelle con il disegno della tabellina, automatiche con delle regole di pianificazione di funzionamento della factory, produce appunto delle business rule che in bonita poi sono le variabili che converte per fare il layout della factory, queste sono scritte in formato IF THEN oppure anche con WHILE etc... 
    > Come distigui da una immagini se sei 
        > Handoff level (level 1) --> differenti lane corrispondono a diversi attori, mostra relazioni tra diversi attori, le attività possono essere collaborative (collaborano per la stessa attività), o concorrenti (attività indipendenti nello stesso momento tra diversi attori), non si trovano attività consecutive per uno stesso attore. 
        > Service level (level 2) --> le task vengono espanse dal livello 1, adesso attività consecutive nello stesso lane sono permesse
        > Task level (level 3) --> contrariamente agli altri livelli, non fa uso di BPMN
    > Perché serve mandare inviare messaggi al client side system

- Simulation
    > Perché non abbiamo waiting time
        > Perché noi volavamo sapere il tempo totale di procesing time senza avere waiting time, abbiamo 
    > Differenza tra transition maps e BPMN
        > La transition maps rappresneta solo i task e quanti token passano da una task all'altra (dipende poi se vediamo apromore o disco), e non vediamo però i gateway perché è un risultato della simulazione.
        > Il BPMN invece la relazione che c'è tra i task, le possibili connessioni tra di esse, non i token che ci passano, quindi è possibile avere anche collegamenti che nella simulazione non ci sono passati token.

- Process Mining
    > Cosa è il Process Mining?
        > E' una tecnica alternativa per creare un modello bpmn usando eventi e data logs
    > Cosa è la PetriNet
        > E' una notazione, un tipo di "assembly per un workflow" usato da
    > Sensibilità parametrica (noise a 0.2 per gli outlier)
    > Che livelli di qualità hanno i logs?
        > Da 1 a 5
            > 1 --> Quando il log viene creato manualmente e quindi potrebbe non corrispondere alla realtà
            > 2 --> Quando i log vengono memorizzati automaticamente da qualche sistema informativo, ma non c'è un approccio che decida quali eventi vengano memorizzati e quali no
            > 3 --> Quando viene anche garantito un controllo sui singoli record, controllando la colonna timestamp che non sia uguale per esempio
            > 4 --> Quando hai un case id per ogni evento
            > 5 --> Quando abbiamo il nome della task 
    > Quali aspetti vanno aggiunti ad un processo per renderloe seguibile?
        > Bisogna avere quelle tre colonne nel log, eseguibile nel senso che non è possibile avere il process mining.
    > Apha Algorithm
        > Cosa è?
            >  L’α-algorithm è uno dei primi algoritmi di process mining: serve a ricostruire automaticamente un modello di processo (tipicamente una Petri Net) a partire da un event log.
        > Limitazioni
            > Short loops --> l'algoritmo scambia loops brevi (lunghezza 1 o 2) per altri tipi di workflow come concorrenza (gateway parallelo)
            > Necessità di un log completo --> perché una possibilità a -> b nel modello appare se e solo se il log contiene una successione di questi eventi almeno una volta, cosa difficile perché si deve  supporre che il modello osservi tutte le posssibili varianti di esecuzione, incluse quelle rare o improbabili.
            > Non scalabile --> non adatto a log grandi o complessi
            > Non resistente ai rumori --> anche pochi eventi anomali compromettono il modello

- Information System
    > Cosa è una Business Rule Task?
        > Differenza con task automatiche normali
            > Quelle che sono formate da del codice fa si che le decisioni di business siano nascoste lì e ci sia dipendenza dagli sviluppatori, mentre con le business rule le decisioni sono esplicite espresse tramite regole formali IF THEN nella maggior parte dei casi
            > Una Business Rule Task è formata da almeno una Business Rule, ma ne può avere tranquillamente più di una definita.
            > Ogni impresa che collabora nella factory ha le proprie business task rules interne e riservate
    > Bonita cosa è?
        > 
        > Mi permette di gestire un insieme di business factory che si inviano dati tra di loro, è un Business Process Managment System (BPMS) Java based che ci permette di sviluppare una applicazione web completamente funzionale dal BPMN e dal DataModels che abbiamo sviluppato su Signavio
    > Onthology cosa è?
        > E' una notazione che serve per descrivere un sistema in maniera formale e non ambigua, dove l'unità principale si chiama concetto (base concept) e si rappresenta con un ovale, le proprietà dei concetti da frecce che però non hanno connessione con altri concetti, può essere usato per definire business rules.
        > E' condivisa tra tutti i partecipanti, quindi tutti usano lo stesso linguaggio e gli stessi concetti.
        > Concetto scritto in italic è un concetto astratto, quindi non può avere nessun attributo.
    > Cosa è la collaborative analytics system
         > Qual'è il dilemma per cui nasce?
            > Una singola azienda ha solo come fornitori solo un sottoinsieme dei totali, per confrontare le prestazioni dei fornitori a livello di comunità, sarebbe utile condividere i dati tra le aziende, ma (1) nessuna azienda vuole rivelare informazioni precise sui suoi fornitori migliori, perché questo darebbe un vantaggio competitivo ai concorrenti, (2) per migliorare la scelta dei fornitori, i buyer dovrebbero avere accesso a dati aggregati di tutta la comunità quindi vogliono condividere abbastanza informazioni per collaborare, ma non così tanto da danneggiarsi a vicenda.
        > Come funziona? 
            > Quindi il sever manda un t0 al buyer, il buyer manda il tempo che ci mette lui, sommandolo al t0, quindi ognuno aggiungendo il proprio tempo, fa ricevere al server la somma totale, ma il server sa anche quanto valeva t0, quindi può calcolare il tempo medio di tutto il sistema ed inviarlo a tutti i buyer che quindi conoscono il tempo medio del sistema, ma senza che ognuno sappia quanto ci mettono gli altri buyer singolarmente. Questo per ottenere un valore aggregato che sia un compromesso. Il sistema calcola, ad esempio, che “il tempo medio di consegna del venditore X tra tutti i buyer è 4,5 giorni”. Non si sa quale azienda ha il fornitore X e con quali tempi precisi.
                