### Optimization Methods oral questions


#### Questions 1st call January 2024 (program AA 23-24)

##### DAY 1

(Matroeni only)

---
Student 1 (from quasi sufficient to 21):

>0. questions about errors of the written part
>1. What infos do i get from the vector lambda of the dual problem? (talking about the exercise 2 of the written test: SV Classification with slack variables)
>
>* What happens when lambda(i) is equal to 0, when it is equal to C or it is between 0 and C?
>
>* Why if I take all the points with lambda(i) equal to C it is not granted that they are all misclassified, but only a subset of them?
>
> (What are the complementarity conditions? Which is the relation between Psi(i) and lambda(i) in the complementarity conditions?)
>
>2. Give the definition of coercivity and explain why the given function is not coercive. 
>* The function was: f(x1, x2) = (x1)^2

>3. Give the definition of Nash equilibrium
>4. Give the definition of Best Response set.
---
Student 2 (from 22 to 26):

>0. Errors of the written part:
> * When writing a model (e.g. SV Classifier with slack variables), you have to explain what every symbol corresponds to (in the example: what is l)
> * When writing back the results, you had to write the lambda vector obtained from the dual problem resolution in Matlab
> * When reporting the support vectors and misclassified points, you had to say which points where equal to C and which where > 0.
> 1. Same question as Student 1 question 1
> 2. Same question as Student 1 question 2
> 3. Talk about complementarity conditions of SV Classifier with slack variables.
> * Prove that if a point is misclassified, then lambda(i) must be equal to C
> * Why if for a given point for which lambda(i) is equal to C and  Psi(i) is 0.5 you have that it could be correctly classsified?
>   * Because when Psi(i) is lower than 1, it could happen that a point is by the right side of the hyperplane, but inside the epsilon-tube.
> 4. Considering exercise 3, note that Matlab is effective when the scalarized problem is strongly convex, in fact it is sufficient to exploit Matlab to find the solutions, since every scalarized problem has one unique optimal solution which can be found by Matlab.
> 5. Give the definition of Nash equilibrium and give an introduction to non-cooperative game theory in case of zero sum games.
> * explain what is a strategy, what is a cost function, what does it mean zero-sum game.

---

Student 3 (from 22 to 26):

>0. errors of the written test.
>1. When you apply an iterative algorithm to a non-convex function what do you expect to find?
> * (a stationary point)
>2. In the case of **constrained** optimization algorithm instead what do you expect to find? For example in the case of the penalty method?
> * ~~(a point that belongs to the feasible region (not sure))~~
>3. Which are the necessary conditions for optimality in the case of a constrained problem?
>4. In the case of unconstrained problem, what implies the Hessian positive semidefinite?
>5. Write the primal problem of linear SVM Classifier with soft margin.
>6. Talk me about the theorem that you want

---

Student 4 (from 23 to 28):

>0. Questions about the errors made in the written part.
>1. How do you get to write a dual problem?
> * When Strong Duality holds?
> * What are the necessary conditions for Karush-Kuhn-Tucker theorem and when they become sufficient for optimality?
>2. When a problem is said convex?
>3. Why the function (same as Student 1 question 2) is not coercive?
>4. -- missing some questions  --

---

##### DAY 2

(Both Mastroeni and Frangioni)

--- 

Student 1:

>Mastroeni: 
>
> Mainly talks about the errors done in the written part.

>Frangioni: 
>1. talk about della kernel function in general, 
>2. apply that to the exercise on binary classification
>3. how do you transform that problem in an unconstrained problem? 
> * (bisogna usare la penalty function e trasformare i vincoli di uguaglianza in vincoli di disuguaglianza) 
>4. Which method we should adopt to solve the obtained unconstrained problem?
>
> * (gradient method o conjugate gradient method perché la funzione ottenuta con il penalty method appartiene alla classe C1)

--- 

Student 2:

>Mastroeni:
>
>Questions about the errors made in the written part + questions about the theoretical part relative to the exercises of the written test.


>Frangioni:
>
> Solve a constrained problem with inexact penalty method.

> Tendenzialmente, se si fa un buon orale, tendono ad aumentare il voto dello scritto di 3-5 punti.

---

---
---


#### Questions 4th call September 2023 (program AA 22-23)

Both Mastroeni and Frangioni, previous program.

Student 1:

>Mastroeni:
>
>correction of the errors I made in written exam. 

>Frangioni:
>
> 1. asked me some theory about the Lagrangian Dual since I did some mistakes in implementing it in the written exam, in particular he asked me to write the formula of the Lagrangian, its gradient, the Lagrangian relaxation, 
> and he asked me to demonstrate that solving the Lagrangian relaxation works even if the Hessian is not positive definite but needs some particular constraints. 

>The oral part with Frangioni can take long, but hopefully he guided me in the demonstration since I had no idea how to prove it (he did not demonstrate that thing during lessons).

---

Student 2:

>Mastroeni: 
>
>0. correction of errors made in written exam; 
>1. zero sum game, what does it means w.r.t. matrix game, what if w.r.t. bimatrix game, systems to find mixed strategy on matrix game, their properties; 
>2. ideal minimum.

>Frangioni: 
>
>1. Lagrangian Dual solutions and counter part (primal) properties, properties of lagrangian relaxation, Dual in special case (convexity), 
>2. demonstration of k-median as a technique to solve the clustering problem. 

>Oral: up to 1 hour.

--- 

Student 3:

>Mastroeni:
>
> asked about exam errors

>Frangioni:
>
> asked about the optional question on the exam:
> 1. Explain how the Lagrangian heuristic works in the Lagrangian dual method. 
>2. MILP formulation and if I can mathematically prove that using the L1 norm leads to finding the optimal centroid.

---
---

#### Questions 2nd call June 2023 (program AA 22-23)


Oral questions of today oral: 

>Mastroeni asks about the errors of the written exam


>Frangioni:
>1. What you know about optimal stepsize for gradient method? Does it converge? How fast?
>2. Can you define what is super linear convergence rate and what it means ?
>3. Can you write down the primal model of the support vector machine ? 
>4. What can you tell me about Quasi-Newton methods ? 
>* How Hk is choosen?