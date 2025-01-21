### Optimization Methods oral questions
#
# The questions written below are just a list of questions that were asked to students during the oral exams, it is recommended to use it 
# only as a help and not to learn exclusively the questions inside the file, for possible answers or corrections contact one of the maintainers.
# 
# Professor Mastroeni usually increases the written grade by 3/4 points if the oral questions are correct.

# Convex and coercive
    - Give the definition of coercivity and explain why the given function is not coercive. --> f(x1, x2) = (x1)^2
    - When a problem is said convex?
        (!) when his hessian matrix is positive definite
    - Existence of global minimum in an uncostrain problem
    
# Unconstrain Problem 
    - In the case of unconstrained problem, what implies the Hessian positive semidefinite?
        (!) the problem is convex and x* is global optimum if and only if gradient(f(x*)) = 0
    - When you apply an iterative algorithm to a non-convex function what do you expect to find?
        (!) a stationary point
    - Gradient method
        (?) - What you know about optimal stepsize for this method? Does it converge? How fast?
    - Inexact gradient method
        (?) - Differences with gradient method
    - Conjugate gradient method
        (?) - What you know about optimal stepsize for this method? Does it converge? How fast?
    - Can you define what is super linear convergence rate (for example quadratic convergence) and what it means ?
    - Newton method
        (?) - What you know about optimal stepsize for this method? Does it converge? How fast?

# Classification Problem
    - Small introduction about the support vector machine and meaning of separation margin
    - When writing a model (e.g. SV Classifier with slack variables), you have to explain what every symbol corresponds to
    - What infos do i get from the vector lambda of the dual problem in classification with slack variable ?
        (?) - What are the complementarity conditions? Which is the relation between Psi(i) and lambda(i) in the complementarity conditions?
        (?) - What happens when lambda(i) is equal to 0, when it is equal to C or it is between 0 and C?
    - Prove that if a point is misclassified, then lambda(i) must be equal to C
    - Why if for a given point for which lambda(i) is equal to C and  Psi(i) is 0.5 you have that it could be correctly classsified?
        (!) because when Psi(i) is lower than 1, it could happen that a point is by the right side of the hyperplane, but inside the epsilon-tube.
    
# Regression Problem
    - Small introduction of regression problem
    - Dual form of linear e-sv regression model with slack variable
    - Dual form of nonlinear e-sv regression model with slack variable
        (?) - What is kernel function

# Clustering Problem
    - Small introduction of a clustering problem
    - Demonstration of k-median as a technique to solve the clustering problem

# Costrained Method
    - How do you get to write a dual problem?
        (?) - When Strong Duality holds?
            (!) strong duality holds when v(P) = v(D) and D admit an optimal solution, sufficient condition for that are that (P) is convex, admit x* as
                global optimum and ACQ holds in x*
        (?) - What are the necessary conditions for Karush-Kuhn-Tucker theorem and when they become sufficient for optimality?
            (!) a global optimum x* must be solution of KKT system as necessary condition, and became sufficient when (P) is convex
    - Which are the necessary conditions for optimality in the case of a constrained problem?
        (!) the optimum must be solution of KKT system
    - Write the formula of the Lagrangian, its gradient, the Lagrangian relaxation.
    - In the case of constrained optimization algorithm what do you expect to find? For example in the case of the penalty method?
    - How to use Penality Method if a problem has equality constrain
        (!) transform each equality constrain into two inequality constrains for example for x = 2 i can write { x <= 2; -x <= -2 }
        (?) - Which method we should adopt to solve the obtained unconstrained problem?
            (!) if i used penality method and the final objective function is C1 i can use gradient method or conjugate method,
                if the final objective function is quadratic is prefered to use the conjugate method
    - Solve a constrained problem with inexact penalty method.
    - Differences between penality method and inexact penality method

# Multiobjective problem
    - Definition of Ideal Minimum, Pareto Minimum, Weak Pareto Minimum
    - Dimostrate that if a set of pareto minimum contains some points, ideal minimum can be exists 
    - Scalarization method
        (?) - How to find set of Pareto Minimum and Weak Pareto Minimum if (P) is convex? And if (P) is linear?
    - Goal method

# Game theory
    - Introduction to non-cooperative game theory in case of zero sum games.
        (!) Explain what is a strategy, what is a cost function, what does it mean zero-sum game.
    - Definition of matrix game and bimatrix game 
    - Give the definition of Nash equilibrium
        (!) (x*, y*) is a nash equilibrium for a non-cooperative game for 2 player if and only if f1(x*, y*) = min f1(x, y*) and f2(x*, y*) = min f2(x*, y)
    - Give the definition of Best Response set.
        (!) B1: Y -> X and B2: X -> Y as B1(y) = { optimal solution x of min xC1y } and B2(x) = { optimal solution y of min xC2y } 
            then (x*, y*) is nash equilibrium if and only if x* = B1(y*) and y* = B2(x*)
    - Duality in the game theory (strong duality)