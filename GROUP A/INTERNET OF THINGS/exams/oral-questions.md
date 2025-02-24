
Di seguito sono riportate alcune domande raccolte nel tempo da studenti degli anni precedenti (2020, 2021). 

### ANASTASI:
#### Energy Management
1. Low power listening, power management in generale
2. Duty cycling e problema dell’energia nelle LLN. Descrivi ASCENT (performance etc)
3. perche energy conserv, lpl e contikimac
4. energy problem, energy per sensori in particolare asa.
5. LLN (perché è necessario gestire il consumo energetico? [...]
6. Come si misura il packet loss rate? (stimata
tramite il rapporto tra pacchetti inviati e ricevuti)
#### 802.15.4
1. Parla dello standard 802.15.4 e concentriamoci sul contention-based, perché due channel assestments
consecutivi, quali sono i motivi per cui un pacchetto potrebbe essere scartato, prestazioni
2. CSMA-CA non-beacon enabled,perché due CCA in beacon-enabled mentre in non-beacon solo un CCA?)
3. Standard 802.15.4: in particolare beacon-enabled contention-based -> Slotted CSMA-CA; perché si fanno 2
trasmissioni successive?

>(i nodi non sono perfettamente allineati all'inizio del time slot...); parametri dell'algoritmo; performance

4. Standard 802.15.4: in particolare non beacon-enabled
5. csma ca beacon enabled
#### RPL
1. Protocollo RPL, costruzione dodag
2. Protocollo RPL
3. Procedura con cui RPL costruisce il dodag: tutti i messaggi usati per stabilire un preferred parent
4. Differenza tra storing e non storing mode, qual è quello più indicato e perché (non storing perché i nodi hanno memoria limitata)
5. RPL (cos'è un'istanza, generalità ecc., cosa fanno i nodi passo passo durante la formazione della rete, commento sul diagramma di flusso (slide 54, pacchetto Routing protocol))
6. Tassonomia dei protocolli di routing(gerarchico, flat..)protocollo di routing (rpl)
#### TSCH
1. TSCH Beacon Enabled, CSMA/CA, che vantaggi ci sono
2. TSCH Beacon Non-Enabled
3. TSCH: Quando si crea un nuovo protocollo di accesso e si arriva, per esempio, a TSCH da 802.15.4? Cos’è il frequency hopping (formula)?
4. TSCH: perché ci sono i due meccanismi multichannel e frequency hopping, qual è lo scopo dell'uno e dell'altro Perché non si può usare lo standard "vecchio" (IEEE 802.15.4) per applicazioni industriali? (principalmente perché sono basati su CSMA-CA,)
5. architettura 6TiSCH
6. come avviene una negoziazione nel protocollo 6top
7. perché è stato introdotto TSCH (latenza...)
8. procedura per calcolare frequence hopping
9. livello 6top nell'architettura 6tisch, descrivere nel dettaglio slide 96 "6top protocol", come viene scelta la CellList (vengono scelte celle tra quelle libere),
10. cosa succede se B non ha slot liberi (manda un messaggio che non è di successo)
11. formation process in tisch network
12. TSCH (n.b. channel hopping: frequenza diversa ad ogni ritrasmissione; multi-channel vs frequency hopping, perché esistono due meccanismi diversi? Quali sono gli effetti finali dei due? Frequency hopping -> aumento dell'affidabilità della comunicazione, multi-channel -> aumento del throughput aggregato, capacità della rete aumentato)

#### 6LowPAN
1. 6LowPAN?
2. 6lowpan: adaptation layer, compressione dell'header, differenza tra stateless e statefull compression (non considero o considero le trasmissioni precedenti), slide 25 su IPHC header
3. 6lowpan compressione e frammentaz, tipi di compressione, campi dell header frammentato

### VALLATI:
1. Data encoding e SenML
2. OneM2M architettura generale, services (application e server, con le common service entity etc), servizio di discovery
3. Perché si introduce il data encoding? Quali linguaggi abbiamo visto e quali sono le differenze tra loro? Cos’è EXI rispetto a XML e JSON? Tre situazioni diverse, quale useresti dei tre?
4. Come si integrano i sensori e gli attuatori con le soluzioni di cloud computing?
5. CoAP, cos’è e principali caratteristiche. Differenze tra GET, POST, PUT, DELETE
6. Cos’è un approccio RESTful? Che origini ha? http, SoAP, WSDL che vantaggi hanno?
7. Cos’è OneM2M?
8. Che cos’è MQTT? Paradigma Web of things?
9. Come avviene lo scambio di messaggi tra client e server? Quali sono i 4 tipi? Messaggi CON, ACK..
10. Differenze tra GET, PUT, POST e DELETE
11. IPSO Smart object con sistema dell’uri
12. Come si arriva al web of things dai service oriented?
13. http, SoAP e WSDN? Differenze? vantaggi di http rispetto agli altri due? Cos’è un uri e che caratteristiche ha?
14. Data encoding?
15. SenML? Differenza con XML? Qual è la struttura generale di SenML?
16. Differenze tra CoAP e http?
17. Modalità di proxy?

## DOMANDE DRIVE

### VALLATI
- breve descrizione di MQTT e COAP, differenze e perché è stato scelto uno rispetto all'altro
(RIGHETTI)
- protocollo MQTT, problemi (applicazione deve stare sul Cloud, dipendenza dalla connessione a
internet, sicurezza)
- paradigma del Web of Things: quali sono secondo te le sue principali caratteristiche per cui si
sposa bene con l'architettura a doppio layer in cui l'app può muoversi
tra il fog e il cloud
- paradigma che consuma più energia: CoAP o MQTT
- differenza principale tra json, XML, senml
- cosa è lo standard ipso-smart-object, in cosa aiuta lo sviluppatore
- qual é il vantaggio di usare HTTP al posto di SOAP+WSDL per constrained devices (è più
semplice)
- che cos'è un URI
- perché non si usa HTML, descrivere XML e JSON
- SenML (nominare la semantica), struttura generale di un documento
- COAP (protocollo a livello applicativo) e differenze con HTTP
- proxy, i due tipi reverse e forward, quando è utile introdurre un proxy (se ci sono tanti clients, così
il server coap non deve tenere in memoria tante informazioni
per rispondere a tutte le domande, e inoltre può fare anche da traduttore di protocolli)
- come funziona lo scambio di messaggi in COAP, rischio di piggy-backed; come funziona il
discovery in COAP (indirizzamento multicast, resource discovery in unicast)
- differenze tra EXI e XML/JSON
- sistemi distribuiti service-oriented architecture, introduzione e limitazioni
- svantaggi di soa

### Esame 22/9/2020
- differenza lowpan e lln. (lowpan sta sopra 802.15.4, lln rete generica di costrained devices)
- tipi di comunicazione (1 a 1, 1 a molti.., il piu usato nelle reti di sensori è molti a uno (il BR))
- 6tsch
- routing in lln (ancora)
- tisch obiettivi, ch hopping e freq
- tipi di scheduling
- smart objects
- autonomus scheduling
#### VALLATI
- coap
- differenze xml json
- mqtt
- server discovery
- proxy in coap
- senml
- cos'è fog computing
- oneM2M architettura
- IPSO smart object cos'è
- paradigma web of things
- exi
- coap, tipi di messaggi, affidabilità del trasporto, funzioni get post etc, risposte e richieste
- cosa sono xml e json (xml meglio per progetti ad esempio sviluppati da piu enti)
- onem2m
- exi
