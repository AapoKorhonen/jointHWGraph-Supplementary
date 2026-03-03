################################################################################
#===============================================================================
# This file is for printing out the results, Similarity 90 % 
#===============================================================================
################################################################################

source("functions/functions_for_result_handeling1.R")


# 1 = accuracy, 
# 2 = balanced accuracy, 
# 3 = MCC, 
# 4 = F1,
# 5 = TPR, 
# 6 = TNR, 
# 7 = PPV, 
# 8 = NPV,
# 9 = FNR, 
# 10 = FPR, 
# 11 = FOR, 
# 12 = LRp,
# 13 = LRn, 
# 14 = FDR, 
# 15 = Averace Clustering coefficients (ACC), 
# 16 = NMI

Values <- c(3,4,14) # MCC, FDR, F1, TPR 

round_value1 <- 2  # how many digits will be showed for the Mean 
round_value2 <- 2  # number of digits for SD


#===============================================================================
# Loading all results
#===============================================================================

load(file = "simulated_data/group_random/p_50_n_20_group_adjacency_s_0.9.RData")
load(file = "simulated_data/group_random/p_50_n_50_group_adjacency_s_0.9.RData")
load(file = "simulated_data/group_random/p_50_n_100_group_adjacency_s_0.9.RData")

true_files_09 <- list(p_50_n_20_group_adjacency_s_0.9,
                   p_50_n_50_group_adjacency_s_0.9,
                   p_50_n_100_group_adjacency_s_0.9)

load(file = "simulated_data/group_random/p_50_n_20_group_adjacency_s_0.5.RData")
load(file = "simulated_data/group_random/p_50_n_50_group_adjacency_s_0.5.RData")
load(file = "simulated_data/group_random/p_50_n_100_group_adjacency_s_0.5.RData")

true_files_05 <- list(p_50_n_20_group_adjacency_s_0.5,
                      p_50_n_50_group_adjacency_s_0.5,
                      p_50_n_100_group_adjacency_s_0.5)


load(file="results/result_files/results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.9.RData")
load(file="results/result_files/results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.9.RData")
load(file="results/result_files/results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.9.RData")

results_jointHWGraph_optimal_09 <- list(results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.9,
                                     results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.9,
                                     results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.9)
                         

load(file="results/result_files/results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.5.RData")
load(file="results/result_files/results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.5.RData")
load(file="results/result_files/results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.5.RData")

results_jointHWGraph_optimal_05 <- list(results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.5,
                                        results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.5,
                                        results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.5)

load(file="results/result_files/results_DSS_GGL_p_50_n_20_group_data_s_0.9.RData")
load(file="results/result_files/results_DSS_GGL_p_50_n_50_group_data_s_0.9.RData")
load(file="results/result_files/results_DSS_GGL_p_50_n_100_group_data_s_0.9.RData")

results_DSS_GGL_09 <- list(results_DSS_GGL_p_50_n_20_group_data_s_0.9,
                                     results_DSS_GGL_p_50_n_50_group_data_s_0.9,
                                     results_DSS_GGL_p_50_n_100_group_data_s_0.9)


load(file="results/result_files/results_DSS_GGL_p_50_n_20_group_data_s_0.5.RData")
load(file="results/result_files/results_DSS_GGL_p_50_n_50_group_data_s_0.5.RData")
load(file="results/result_files/results_DSS_GGL_p_50_n_100_group_data_s_0.5.RData")

results_DSS_GGL_05 <- list(results_DSS_GGL_p_50_n_20_group_data_s_0.5,
                           results_DSS_GGL_p_50_n_50_group_data_s_0.5,
                           results_DSS_GGL_p_50_n_100_group_data_s_0.5)

load(file="results/result_files/results_DSS_FGL_p_50_n_20_group_data_s_0.9.RData")
load(file="results/result_files/results_DSS_FGL_p_50_n_50_group_data_s_0.9.RData")
load(file="results/result_files/results_DSS_FGL_p_50_n_100_group_data_s_0.9.RData")

results_DSS_FGL_09 <- list(results_DSS_FGL_p_50_n_20_group_data_s_0.9,
                        results_DSS_FGL_p_50_n_50_group_data_s_0.9,
                        results_DSS_FGL_p_50_n_100_group_data_s_0.9)


load(file="results/result_files/results_DSS_FGL_p_50_n_20_group_data_s_0.5.RData")
load(file="results/result_files/results_DSS_FGL_p_50_n_50_group_data_s_0.5.RData")
load(file="results/result_files/results_DSS_FGL_p_50_n_100_group_data_s_0.5.RData")

results_DSS_FGL_05 <- list(results_DSS_FGL_p_50_n_20_group_data_s_0.5,
                           results_DSS_FGL_p_50_n_50_group_data_s_0.5,
                           results_DSS_FGL_p_50_n_100_group_data_s_0.5)

load(file="results/result_files/results_stabJGL_p_50_n_20_group_data_s_0.9.RData")
load(file="results/result_files/results_stabJGL_p_50_n_50_group_data_s_0.9.RData")
load(file="results/result_files/results_stabJGL_p_50_n_100_group_data_s_0.9.RData")

results_stabJGL_09 <- list(results_stabJGL_p_50_n_20_group_data_s_0.9,
                        results_stabJGL_p_50_n_50_group_data_s_0.9,
                        results_stabJGL_p_50_n_100_group_data_s_0.9)


load(file="results/result_files/results_stabJGL_p_50_n_20_group_data_s_0.5.RData")
load(file="results/result_files/results_stabJGL_p_50_n_50_group_data_s_0.5.RData")
load(file="results/result_files/results_stabJGL_p_50_n_100_group_data_s_0.5.RData")

results_stabJGL_05 <- list(results_stabJGL_p_50_n_20_group_data_s_0.5,
                           results_stabJGL_p_50_n_50_group_data_s_0.5,
                           results_stabJGL_p_50_n_100_group_data_s_0.5)

################################################################################
################################################################################
# RESULTS
################################################################################
################################################################################



################################################################################
#===============================================================================
# jointHWGraph, Optimal CI
#===============================================================================
################################################################################

cat("jointHWGraph, Optimal CI")

print_results(results_jointHWGraph_optimal_09,true_files_09, values = Values, round1=round_value1,round2=round_value2)
print_results(results_jointHWGraph_optimal_05,true_files_05, values = Values, round1=round_value1,round2=round_value2)

################################################################################
#===============================================================================
# DSS_GGL
#===============================================================================
################################################################################

cat("DSS_GGL")

print_results(results_DSS_GGL_09,true_files_09, values = Values, round1=round_value1,round2=round_value2)
print_results(results_DSS_GGL_05,true_files_05, values = Values, round1=round_value1,round2=round_value2)

################################################################################
#===============================================================================
# DSS_FGL
#===============================================================================
################################################################################

cat("DSS_FGGL")

print_results(results_DSS_FGL_09,true_files_09, values = Values, round1=round_value1,round2=round_value2)
print_results(results_DSS_FGL_05,true_files_05, values = Values, round1=round_value1,round2=round_value2)


################################################################################
#===============================================================================
# stabJGL
#===============================================================================
################################################################################

cat("stabJGL")

print_results(results_stabJGL_09,true_files_09, values = Values, round1=round_value1,round2=round_value2)
print_results(results_stabJGL_05,true_files_05, values = Values, round1=round_value1,round2=round_value2)








