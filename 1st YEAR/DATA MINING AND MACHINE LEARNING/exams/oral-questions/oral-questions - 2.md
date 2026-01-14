## ########################### DATA MINING and MACHINE LEARNING ###########################

## ########################### Preprocessing ###########################
- Data Cleaning
    > How to remove noisy
        > Smoothing Algorithms 
            > Rectangular smooth
            > Triangular smooth
            > The Savitzky-Golay Smoothing
                > Which parameters we have to define?
                > Why is better than rectangular smoothing?
                > How choose the best window?

- Data Reduction
    > Dimensionality Reduction (Feature Selection)
        > Curse of dimensionality
        > PCA
            > The Algorithm
                > Eigen values and eigen vectors in PCA, how are they used?
            > We have to select at the beginning the number of attributes we want to select? Why is not dramatic in PCA?
        > Mutual Information (Heuristic Approach)
            > The Algorigthm
            > What happened if are indipendents?
            > What is the problem of MI?
            > When MI(X, Y) is low what does it means? (That the attribute are indipendents)
            > Spiegami il significato del G score, in quali casi aumenta? (??)
            > Whats the differents from PCA 
        > Normalized Mutual Information
        > Entropy
    > Numerosity Reduction
        > Techniques of Reduction for Classification (??)
        > Regression Models
            > Linear Regression
            > Multiple Linear Regression
            > Polynomial Regression
        > Non Parametric Models
            > Sampling, which is the best?

- Data Integration
    > Which is the goal?
    > Which are the two different measures of correlation/indipendence?
        > Chi-Square
            > How do you calculate the expected value for an attribute?
            > If it is high? If it is low? 
            > What is degree of freedom?
        > Correlation Analysis
            > Meaning of scatter plots of some correlation value 
            > Correlation coefficient = 1, what type of scatter plot does it correspond to?
            > Text Vector
        > Covariance Analysis

- Data Trasformation
    > What is the goal?
    > Normalization
    > Discretization
        > Binning [Equal-depth (frequency) partitioning,  Equal-width (distance) partitioning]
        > Clustering analysis

## ########################### Classification ###########################
- Preparing Data
    > In the hypothesis that information entropy is equal to zero, what is the scenario in the training set?
- Decision Tree 
    > How we can build it?
    > What measure we use to split the node?
        > Information Gain
            > What is the problem?
        > Gain Ratio
        > Gini Index
- Nayve Bayes Method
    > What is the problem? How we resolve it?
    > Example of the possibility on two classes, and 2 attributes with 3 possible values each. Why is it difficult to compute this probability?
    > Explain precision and recall
    > We want to compare different probabilities threshold, how to use ROC?
        > How to compare two classifiers with the help of ROC?
    > Suppose we have dependencies, how to classify?
- Rule-Based Method
    > How works? Is Interpretable?
    > foil_gain and foil_prune
    > Conflict resolution mechanism.
    > What is One-Rule Classifier?
- Lazy Learning
    > How it works?
    > K-Nearest Neighbours
        > How we choose k?
        > Problems?
        > Complexity
        > Editings methods
            > Wilson Editing
            > Multiediting
            > Citation Editing
            > Supervised Clustering
- Evaluation Phase
    > Confusion Matrix
        > Metrics to evaluate a classifier
        > Why we use f1-score?
    > Holdut Method
    > Cross Validation Method
    > Bootstrap
    > Evalueting different classifiers 
        > Null hypotesis
        > Confidence Interval
            > Parametric statistical tests (t-test)
            > Non parametric statistical test (wilcoxon signed rank sum test)
            > What are the differences among them?
            > Describe the ROC curve
- Ensamble Methods Classification
    > Bagging
        > Random Forest
        > Disegna graficamente cosa succede con il sample with replacement
    > Boosting
        > Adaboost
- Imbalanced Data
    > Why is a problem?
    > Oversampling
        > SMOTE

## ########################### Clustering ###########################
- Assessing Clustering Tendency
    > Hopkins
        > Which values assume?
            > Possible values for the Hopkins test. 
        > Formula
- Partitioning-based clustering
    > K-Means
        > How it works?
            > Cost function
            > Make the plot of the cost function based on the value of k.
        > Problems?
            > Local minimum. Affected by Outliers. Computationally expensive.
            > Not suitable for cluster with not-convex shapes
        > How to find the value for k?
            > Elbow Method
- Hierarchical Clustering
    > How it works?
    > Linkage methods: single, average, complete
    > Types of distances
    > BIRCH
        > How it works?
        > How is it possible to locate an instance in a leaf. Parent_CF = Sum of Childs_CF
        > Branching factor. Second Threshold.
        > Advantages
            > Streaming data: incremental mining
        > Disadvantages 
            > The result depends on the order by which instances are given to the model (the biggest)
            > Only numerical attributes in CF
    > Chameleon
        > How it works?
        > Differences
- Density-based clustering
    > Density connection concept
        > Density Connected, Density Reachable
    > DBSCAN
        > How it works?
        > What's form can assume the clusters
        > Which parameters i have to set?
        > Advantages rather than K-Means
        > How to evaluate the clusters?
            > Can we apply Shiluette?
    > DENCLUE
        > How it works?
        > How are considered the outlier in denclue?
        > How to evaluate the clusters?
            > Can we apply Shiluette? (no)
    > OPTICS
        > Why we use it?
        > Drow one possible output for it

- Constraint-based clustering
    > What is the problem
    > Types of constrain
    > Which solution we had seen for hard-costraint?
        > COP-K-Means
- Measuring Clustering Quality
    > Determining the Number of Clusters
        > Elbow method
        > Cross validation method
    > Extrinsic methods 
        > Bcubed precision and recall
        > What is the correctness
    > Intrinsic methods
        > Silhouette coefficient
            > When we can use it? (for convex only?)
    > Why did they introduce this indexes in the literature if we can not really use them in real world application where we do not know the class label?
        > This is done because we use this metrics for benchmarking when new clustering algorithms are proposed.

## ########################### Association Rule ###########################
- Association rule
    > Definitions
    > How to generate strong association rules?
    > Support, confidence, all_conf, max_conf, kulc, cosine, IR.
- Frequent Pattern Mining 
    > What's we want to obtain?
    > Apriori
        > Algorithm
        > What's the complexity (at each iteration, what's is N)
    > FP-growth
        > Algorithm 
        > How many scan do? (2)
    > What's type of measure?
        > Null-Invariant and Not Null-Invariant Measures

## ########################### Frequent Pattern Advanced ###########################
- Colossal Patterns
    > What are they?
    > What's the problem? How we resolve it?

## ########################### Outlier ###########################
- Outlier detection in general
    > Types of outlier (global, collective, contextual)
- Statistical Approches
    > Parametric Method
    > Non Parametric Method
- Proximity based approach
    > Grid based method (CELL)
    > Local Distance-Based Outlier Detection
        > What's the problem? How we resolve it?
        > Outlierness
        > Drow
    > Density-Based Outlier Detection (and example of when this approach works well)
        > LOF (Local Outlier Factor)
            > Is there a problem?
            > Explain this formula tells us if a point is an outlier or not from an intuitive point of view.
- How detect outlier in cluster models
- How detect outlier in high dimensional data
    > How to detect outliers using the angle.

## ########################### High dimensional data clustering ###########################
- What's the problem for high dimensional in clustering ?
    > For example in your opition for the k-means model

## ########################### Constrained Cluster ###########################
- Clustering with constrain
    > Hard and soft constrain 

## ########################### Graph Clustering ###########################
- Graph Mining
    > Single, complete and average linkage.
    > What's the problem?
        > The traditional distance definition does not work well.
    > New Distance
        > Similarity/dissimilarity measures for clustering.
        > SimRank
            > What's it?
            > Assunzione sulle condizioni di terminazione dell'iterazione?
            > How can we exploit it? (in hierarchical clustering)
            > Problems?
                > The main problem of this approach is that we have to store SUV and that it is costly O(n^2)
    > Graph Clustering Methods
        > SCAN
            > Describe how it works

## ########################### Sequential Pattern Mining ###########################
- Sequential Pattern Mining
    > What is?
    > Apriori for sequential pattern mining
        > Apriori All, Apriori Some, Apriori Dynamic Some
    > FPGrowth for sequential pattern mining
        > How works in general?
        > What is closed itemset? max itemset?
        > FreeSpan
    > Generating Annotations on Item repeating Patterns
    > What are the metrics to measure the quality of rules?
    > Null-variant and imbalanced problems?

## ########################### Data Stream ###########################
- How to deal streaming data
    > Concept Drift
    > Algorithms
        > Clustering
            > Adaptive Streaming k-Means
            > Difference between MuDi-Stream
        > Classification
            > Hoeffding Tree


## ########################### Federated Learning ###########################
- Federated Learning
    > How it works
- Federated Learning with K-Means

## ########################### XAI ###########################
- Explenability Design 
- Explenability Post-Hoc
    > How to apply post-hoc tecnique (global, local)
    > What's the output that we expected in shuffle prediction