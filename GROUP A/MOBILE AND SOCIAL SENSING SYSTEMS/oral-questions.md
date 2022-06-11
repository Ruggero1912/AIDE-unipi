## Oral Questions

#### First Appello June 2022 Questions

07/06/2022:

1. Architetture per la localizzazione dei nodi (self, remote, ecc…) + alcuni esempi range-based e range-free
2. Come si costruisce il social dissemination graph
3. Scribe
4. Pastry lookup
5. Analisi del segnale ottenuto nel caso di una camminata
6. DV-HOP
7. Funzionamento generale Pastry
8. Ciclo di vita di una Activity
9. APIT
10. Human as sensors: come si definisce un claim, MLE
11. Limiti approccio centralizzato per P-S

08/06/2022:

- Io ho fatto l'orale con Vecchio, l'interrogazione è andata così:
>1. All'inizio ha guardato il mio student log del progetto, poi ha aperto il codice del progetto e mi ha chiesto di spiegargli l'implementazione di alcune cose
>2. WiFi fingerprinting: qual è il principio di funzionamento, quali sono i vantaggi, quando si usa, com'è fatta la tabella di questo servizio
>3. Consumi energetici da trasmissione dati: quali sono gli stati di un transceiver (non importa sapere i nomi esatti degli stati) , come mai ble consuma poco, come si può ridurre il consumo della trasmissione di dati (raggruppando la trasmissione di tanti pacchetti in un connection event in modo che lo sleeping period sia più lungo e in modo che si passi meno volte dagli stati intermedi)

- Anch'io esame con Vecchio e basta, mi ha chiesto implementazione di alcune cose del progetto guardando il log e poi DV-Hop.

- A me Avvenuti ha chiesto HaS, in particolare parlare di come si ottengono claims a partire da un social network (stemming, stopwords filtering, POS tagging e similarity ecc), SD graph, come si calcolano i pesi degli archi, probabilità ecc. Vecchio invece una domanda veloce sul progetto

- A me vecchio ha chiesto immuni: come e ogni quanto vengono generate le chiavi, il protocollo generale, gli indici di pericolosità e come si garantisce la privacy

- A me Vecchio ha chiesto APIT: ho parlato in generale dei metodi range-free, ho descritto il metodo APIT con un esempio con 4 ancore, ho parlato delle differenze tra approximate e perfect PIT test e come mai nel primo caso possono verificasi degli errori di stima. 
Poi sempre Vecchio, guardando il log del progetto, mi ha chiesto come mai avessi fatto certe scelte implementative in una parte che avevo sviluppato.