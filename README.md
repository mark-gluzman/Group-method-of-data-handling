# Group-method-of-data-handling-GMDH
My realization of Group method of data handling (GMDH)

Goal: to investigate patterns of selection of optimal models for various criteria based on statistical samples of different lengths and different levels of noise.
 
 What is done:
 1) implement the Recursive least squares (RLS) algorithm.
 2) set the recurrent formula of RSS
 3) Parameters:
  * Parameters: m, n, teta0 (true parameter vector), ksi (noise).
  * matrix regressors X (nxm) (uniformly distributed numbers in a given range [a, b]);
  * Noise vector ksi [nx1] (normally distributed N(0,sigma^2)).
  * The number of fixed regressors: m = 5;
  * Vector set of true parameters: teta0 = [3 1 -2 0 0], that is true (no noise) model (accurate signal) y0 = 3x1-2x2 + x3, therefore inputs x4 and x5 are redundant, but they take part in the modeling.
  * Model y = Xteta0 + ksi
  * Q1*,...,Q5* are the result of the RLS
 4) Use three different criteria:
  1. RSS (s) (the residual sum of squares)
  2. Cp (s) = RSS (s) + 2s (Mallows's Cp) 
  3. FPE (s) = [(n + s) / (n-s)] * RSS (s) (the ï¬nal prediction error)
 5) posibilities:
  - Generate different matrix X;
  - For each matrix X generate different noise vectors ksi;
  - Change the noise variance;
  - Change the complexity of the model: t = 1; 2; 3; 4; 5;
  - For each variant (x, y, ksi) estimate parameters of the five models by the RLS with growing complexity;
  - For each model calculate the estimated value of the three criteria;
  - Plot "criterion-complexity"
