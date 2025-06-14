============================
⭐ DOMANDE PROFESSOR FIASCHI
============================

--- USCITE IN SEDE D’ESAME ---

REINFORCEMENT LEARNING
1. Cos’è il modello dell’environment in Reinforcement Learning?
2. Differenza tra SARSA e Q-Learning? E tra SARSA e Expected SARSA?
3. Cosa comporta l’uso di Deep SARSA rispetto a Deep Q-Learning?
4. Policy Gradient Theorem – spiegazione e utilizzo.
5. Actor-Critic – funzionamento, struttura e differenze tra actor e critic.
6. Perché serve il teorema del gradiente della policy nella derivazione della loss?
7. Perché non possiamo usare sempre il Dynamic Programming in RL?
8. Cos’è la definizione di ritorno (return) e come si calcola?
9. Eligibility Traces – cosa sono e a cosa servono?
10. Monte Carlo Tree Search – le 4 fasi e come funziona la simulazione a rollout.
11. Ottimismo nell'exploration – dove lo abbiamo usato? Serve a cosa? Regret?
12. Dyna-Q – cos’è e in che scenari si usa.
13. DQN – principi base, struttura e vantaggi.
14. Proximal Policy Optimization (PPO)
    - PPO-penalty: che cos’è?
    - PPO-clipping: a cosa serve?
15. Soft Actor Critic (accennato) – qual è il ruolo dell'entropia?
16. Policy optimization con reti neurali – che differenze ha rispetto a value-based?
17. Teorema Compatible Function Approximation – relazione col policy gradient.
18. Perché diventa problematico usare il policy gradient theorem in presenza di reti neurali?
19. Cos’è la GLIE property e cosa garantisce?

ALPHA THEORY / BAN
20. Differenze tra rappresentazione simbolica e numerica: vantaggi e svantaggi.
21. Algorithmic Numbers – cos’è un numero algoritmico? Esempi:
    - α + 1 → No
    - 1 → Sì
22. Cosa sono i BAN (Boolean Algebraic Numbers)? Definizione e usi.
23. Fare moltiplicazioni tra BAN: a cosa serve?
24. Alpha Theory – 1º, 2º e 3º assioma:
    - 1° Assioma – introduzione dei numeri Euclidei E ⊂ R
    - 2° Assioma – Internal Sets (e perché sono importanti)
    - 3° Assioma – l’estensione *f funziona anche su R? (sì). Dimostrazione richiesta.
25. Alpha theory – composizione e compatibilità delle funzioni tra estensione e dominio limitato.
26. Perché (α + 1) non è algorithmic, ma 1 sì?
27. Estensione garantisce identità tra f e *f su R? (sì)

--- DOMANDE DAL CONTESTO / GENERATE ---

REINFORCEMENT LEARNING
1. SARSA – è stato trattato nel corso?
2. Che cos’è SARSA? Qual è la sua definizione e come funziona?
3. Possiamo usare Deep SARSA al posto di Deep Q-Learning? Vincoli?
4. Che cos’è il ritorno (return) in RL?
5. Eligibility Traces – definizione e ruolo.
6. Possiamo sempre utilizzare dynamic programming in RL?
7. Policy Gradient Theorem – in che contesto si usa?
8. Relazione tra Policy Gradient Theorem e Actor-Critic?
9. Cos’è il Compatible Function Approximation Theorem? Contesto d’uso?
10. Perché serve il Compatibility Theorem con il Policy Gradient?
11. A cosa serve il teorema del gradiente della loss function?
12. Che cos’è l’ottimismo in RL? Come lega al regret?
13. Possiamo calcolare il regret in RL?
14. Cos’è il Dyna-Q? Contesti d’uso?
15. Cos’è il DQN? Struttura?
16. Monte Carlo Tree Search – fasi principali?
17. Policy Optimization – tecniche principali?

ULTERIORI APPROFONDIMENTI
18. SARSA λ vs SARSA – differenze e vantaggio eligibility traces?
19. Expected SARSA – quando usarlo?
20. GLIE Property – come lega alla convergenza on-policy?
21. Ottimismo e UCB – come si applica a MDP complessi?
22. Convergenza di TD vs MC – quale più veloce? Quando?
23. Replay buffer – perché migliora le performance?
24. Double DQN – che problemi risolve rispetto a DQN?
25. Actor-Critic – on-policy o off-policy? Può diventare off-policy?
26. Ruoli distinti di actor e critic.
27. Uso del baseline Vπ(s) – impatto su varianza?
28. Natural Policy Gradient – più stabile? Limitazioni?
29. Compatibility Theorem – perché difficile da usare con deep networks?
30. Off-policy learning – differenza IS vs Q-learning?
31. SAC e entropia – che problema risolve?
32. Come impostare il coefficiente ν in SAC?
33. Alta varianza con importance sampling – come controllarla?

ALPHA THEORY / BAN APPROFONDIMENTI
34. Perché usare numeri Euclidei E e α?
35. Differenza tra *f e f – dove applicare l’estensione?
36. Transfer principle – perché non trasferisce completezza?
37. Coerenza tra Internal Sets e assioma di estensione?
38. BAN – sono algoritmici? Perché m = 1?
39. α + 1 vs 1 – perché uno è algoritmico e l’altro no?
40. Normal form dei BAN – limitazioni computazionali?
41. BAN a lunghezza fissa vs approccio simbolico – vantaggi?

===============================
⭐ DOMANDE PROFESSOR COCOCCIONI
===============================

--- USCITE IN SEDE D’ESAME ---

MULTIOBJECTIVE OPTIMIZATION
1. Cos’è PAES e come funziona l’adaptive grid?
2. Cos’è NSGA-III? Differenze da NSGA-II?
3. Cos'è la Pareto Dominance? Algoritmi basati?
4. NSGA-II vs NSGA-III.
5. Cos’è MOEA/D? Differenze da NSGA-II/NSGA-III?
6. Si può usare il clustering nei GA? (Sì – niching, k-medoids)
7. Ha senso trattare un problema multiobiettivo come single objective? Motivare.
8. Scalarizzazioni usate in MOEA/D:
    - Weighted Sum: differenziabile? (Sì)
    - Chebyshev: differenziabile? (No)
    - Possiamo togliere || nella Chebyshev? (Sì)
9. Clustering come niching – implementazione pratica?
10. Indicator-based methods – definizione, esempi: SMS-EMOA, HypE.
11. Parallelizzazione dei GA – come si fa? Operazione critica?
12. Metriche di performance: GD, IGD, ∆, Hypervolume.
13. Bounding box da Ideal a Nadir point – possibile? (Sì)
14. Penalty Method in problemi a vincoli – e PL-NSGA-II.
15. SMS-EMOA – senso usarlo in many-objective?
16. MOEA/D – interpretazione grafico Hypervolume.
17. Domande su paper discusso (conoscenza generale risultati).

--- DOMANDE DAL CONTESTO / GENERATE ---

MO OPTIMIZATION / NSGA / MOEA
18. Quando usare MOEA/D rispetto a NSGA-II/III?
19. Pareto-Dominance vs Indicator-based vs Decomposition-based?
20. In che contesti SMS-EMOA fallisce? HypE migliore se M > 4?
21. Uso dei lambda vector in MOEA/D in many-objective?
22. Quante lambda vector per buona copertura? Strategie?
23. Comportamento delle metriche GD, IGD su fronti discontinui?
24. Delta+ metric – quando fuorviante?
25. Debolezze di CASP (cone separation)?
26. mspMEA vs cspMEA – differenze, vantaggi dei microconi?
27. Quando la parallelizzazione peggiora le prestazioni?
28. Perché la valutazione della funzione obiettivo è collo di bottiglia?
29. RadViz e Parallel Coordinates – utilità per visualizzazione?
30. Adaptive Grid in PAES – si può usare altrove?

REFERENCE POINTS / VISUALIZZAZIONE
31. NSGA-III e reference points – come crearli? Quanti?
32. Mixed Pareto-Lexicographic Optimization – in breve?
33. Generazione automatica delle reference directions?
34. NSGA-III è adattivo? Estensibilità dinamica?
35. Perché NSGA-III non richiede parametri extra rispetto a MOEA/D?
36. Quando ottimizzare l’hypervolume è controproducente?
37. Penalty method e I-Big-M – ruolo del metodo “infinitesimale”?
