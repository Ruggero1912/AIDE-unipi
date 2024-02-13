# Large Scale and Multistructured Databases

Professors: Pietro Ducange, Jonatan Gallo (lab)

CFU: 9

Code: 883II

[UniPi page](https://esami.unipi.it/esami2/programma.php?pg=ects&c=44161)

### Exam structure

In order to make the oral exam, you have to implement and present a project work made in group (group members: 3).

The project requires also a well made documentation with use cases, UML, db collections and entities, db queries (some need to be aggregated queries). 
You should exploit two databases types: document DB and (usually) graph DB. You should carefully choose which db should be used for each functionality.

STEPS:
1. **Project Proposal**: usually during the lessons, but also on a students' receipt you have to present your project idea and some implementation ideas to the professor, that can approve or discard or suggest some modifications.
2. **Project presentation**: when your project is ready, you have to present it to the professors, that will evaluate the project. The focus will be on db structure, aggregated query, available features. Prof Ducange will evaluate mostly the part of db queries, asking how each project feature is implemented, will another professor will check the code implementation details.
3. **Oral exam**: 20 minutes of questions about the exam program. English not mandatory.

### Students' projects

This is a list of the public projects made by some students in the past. For some of them only the documentation is available, for some others the code too:

- **BeatBuddy**: [GitHub repo](https://github.com/LucaArduini/BeatBuddy)
>Presented in February 2024
>
>Made by Luca Arduini, Enrico Giovanni Loni, Lorenzo Mancinelli
>
>The project has been approved with a full mark, and no errors were identified during its review.
>
>Java app, some Python scripts for scraping, exploits MongoDB and Neo4j

- **EventinZona Mobile App**: [Frontend repo](https://github.com/GiulioFischietti/lsmdb_project_app) - [Backend repo](https://github.com/GiulioFischietti/lsmdb_project_backend) - [documentation](https://drive.google.com/file/d/1pGdA8pPIqlJchCjLJFG5S9cVrzAe7i4t/view)
> presented in February 2023
>
> made by Giulio Fischietti
>
> Documentation: https://drive.google.com/file/d/1pGdA8pPIqlJchCjLJFG5S9cVrzAe7i4t/view
>
>GitHub Repos:
> - front-end: https://github.com/GiulioFischietti/lsmdb_project_app
> - back-end: https://github.com/GiulioFischietti/lsmdb_project_backend
>
>Video Demo: https://drive.google.com/file/d/1BHyK2A-uin02X9XYLjEPqV7N6B_5o-EX/view?usp=share_link
>
>Technologies used:
>- Front-end: Flutter 
>- Back-end in Node.js
>- DBMSs: MongoDB and Neo4j
>
>In the link is provided the whole documentation with sharding and replication design.
>
>Errors and mistakes corrected by Jose Corcuera during oral exam: 
>- Consistency management between Neo4j and MongoDB: it should be done with a hinted handoff aproach and a retry with timeout on the Neo4j side. It is currently implemented with rollback which is not good as we could potentially lose useful data.
>- Cronjobs: cronjobs must be run with scripts external to Node.js otherwise each node will write the same data over and over

- **Rechype**: [GitHub repo](https://github.com/TommyTheHuman/Rechype)
>Presented in June 2021
>
>Made by Tommaso Amarante, Edoardo Morucci, Niko Salamini
>
>Exploits MongoDB, Neo4j and KV db. Written in Java.

- **Paper Rater | Ruffoli - Baldi - Hudema**: [GitHub repo](https://github.com/edoardoruffoli/PaperRater)
>Presented in February 2022
>
>Made by Edoardo Ruffoli, Tommaso Baldi, Francesco Hudema
>
>Java app, exploits MongoDB and Neo4j

- **LearnIt | Minniti - Pezzuti - Del Seppia**: [GitHub repo](https://github.com/federicominniti/LearnIt)
>Presented on January 2022
>
>Made by Federico Minniti - Francesca Pezzuti - Matteo Del Seppia
>
>Java app, exploits MongoDB and Neo4j

- **PokeMongo | Fazzari - Ramo - Xhanej**: [GitHub repo](https://github.com/edofazza/pokeMongo)
>Presented on February 2021
>
>Made by Edoardo Fazzari - Mirco Ramo - Olgerti Xhanej
>
>Java app, some python scripts, latex doc, MongoDB and Neo4j

- **JustRecipe | Cioffo - Campilongo - Iemma**: [GitHub repo](https://github.com/danielecioffo/JustRecipe)
>Presented on January 2021
>
>Made by Daniele Cioffo - Francesco Iemma - Francesco Campilongo

- **Job Advisor | Dallatomasina - Morteza - Leena** [GitHub repo](https://github.com/morarez/Job-Advisor)
>Presented in February 2022
>
>Made by Arezoumandan Morteza - Erica Dallatomasina - Aizdi Leena
>
>Java app, Mongo and Neo4J

- **London Safe Travel | Pagani - Marinsalda - Frati** [GitHub repo](https://github.com/scarburato/LargeScaleDBsProject)
>Presented in January 2023
>
>Java, Mongo, neo4j, LaTeX

**More links to projects are coming**: if you want to share your project make a pull req or DM


### Oral questions

You can find a collection of oral questions in the directory [ORAL QUESTIONS](oral-questions), some of them may be in italian.


### Students'notes

Here you can find a collection of public notes written by the students:

- [LargeScale](LargeScale_21-22_Anna-Fabbri.pdf): 
>made in the academic year 21-22, 77 pages, in english, 
>
>covers the part of prof Ducange
>
>author: Anna Fabbri

- [LargeScaleRecap](LargeScaleRecap_20-21_Valerio-Giannini.pdf): made in the academic year 20-21, 58 pages, in english, author: Valerio Giannini
