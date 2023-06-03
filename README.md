# Primal-Dual-Interior-Point-Methods

This repo implements three different variations of the Interior point method. The first implementation was for Central Path with fixed step size (α) and centering parameter (σ). Function `central_IP` takes the LP system in standard form as `A`, `b`, and `c` representing RHS, LHS of equality conditions, and cost factors of the primal problem respectively. Additionally, it takes a value of the step size, centering parameter, and tolerance for stopping criteria. The second implementation was for Central Path with adaptive step size (α) and centering parameter (σ). Function `central_IP_adaptive` takes the same parameters as `central_IP` except for the step size as it implements an additional step to compute its value internally in each iteration. The last function, `mehrotra`, was implementation for the Mehrotra predictor-corrector. The function also takes the LP system in standard form as `A`, `b`, and `c` representing RHS, LHS of equality conditions, and cost factors of the primal problem respectively, and calculate both adaptive steps and centering parameter for each iteration.
