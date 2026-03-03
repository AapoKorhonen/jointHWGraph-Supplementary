################################################################################
################################################################################
################################################################################
################################################################################
#
# jointHWGraph, optimal
# 
################################################################################
################################################################################
################################################################################
################################################################################

library(parallel)
library(doSNOW)
library(foreach)
library(progress)

#source("functions/functions_for_result_handeling.R")


################################################################################
#===============================================================================
# p = 50, n = 20, similarity = 0.9
#===============================================================================
################################################################################


load(file = "simulated_data/group_random/p_50_n_20_group_data_s_0.9.RData")
load(file = "simulated_data/group_random/p_50_n_20_group_adjacency_s_0.9.RData")

n <- dim(p_50_n_20_group_data_s_0.9[[1]][[1]])[1];  n
p <- dim(p_50_n_20_group_data_s_0.9[[1]][[1]])[2]; p
n_groups <- length(p_50_n_20_group_data_s_0.9[[1]]); n_groups
t1 <- length(p_50_n_20_group_data_s_0.9); t1 

n_cores <- parallel::detectCores() - 1

cl <- parallel::makeCluster( min(n_cores, t1) , type = "SOCK")

doSNOW::registerDoSNOW(cl)

pb <- progress::progress_bar$new(format = " :percent [:bar] :elapsed | eta: :eta",
                                 total = t1 +1 , width = 80)

progress <- function() pb$tick()

opts <- list(progress = progress)

pb$tick()

results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.9 <- foreach(i = 1:t1, .packages=c('jointHWGraph'), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_20_group_data_s_0.9[[i]]
  results <- jointHWGraph(data_list = data_R, parallel_c=F)
  
  results$adjacency_matrices
  
}

stopCluster(cl)

save(results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.9, file="results/result_files/results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.9.RData")


################################################################################
#===============================================================================
# p = 50, n = 50, similarity = 0.9
#===============================================================================
################################################################################


load(file = "simulated_data/group_random/p_50_n_50_group_data_s_0.9.RData")
load(file = "simulated_data/group_random/p_50_n_50_group_adjacency_s_0.9.RData")

n <- dim(p_50_n_50_group_data_s_0.9[[1]][[1]])[1];  n
p <- dim(p_50_n_50_group_data_s_0.9[[1]][[1]])[2]; p
n_groups <- length(p_50_n_50_group_data_s_0.9[[1]]); n_groups
t1 <- length(p_50_n_50_group_data_s_0.9); t1 

n_cores <- parallel::detectCores() - 1

cl <- parallel::makeCluster( min(n_cores, t1) , type = "SOCK")

doSNOW::registerDoSNOW(cl)

pb <- progress::progress_bar$new(format = " :percent [:bar] :elapsed | eta: :eta",
                                 total = t1 +1 , width = 80)

progress <- function() pb$tick()

opts <- list(progress = progress)

pb$tick()

results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.9 <- foreach(i = 1:t1, .packages=c('jointHWGraph'), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_50_group_data_s_0.9[[i]]
  results <- jointHWGraph(data_list = data_R, parallel_c=F)
  
  results$adjacency_matrices
  
}

stopCluster(cl)

save(results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.9, file="results/result_files/results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.9.RData")



################################################################################
#===============================================================================
# p = 50, n = 100, similarity = 0.9
#===============================================================================
################################################################################


load(file = "simulated_data/group_random/p_50_n_100_group_data_s_0.9.RData")
load(file = "simulated_data/group_random/p_50_n_100_group_adjacency_s_0.9.RData")

n <- dim(p_50_n_100_group_data_s_0.9[[1]][[1]])[1];  n
p <- dim(p_50_n_100_group_data_s_0.9[[1]][[1]])[2]; p
n_groups <- length(p_50_n_100_group_data_s_0.9[[1]]); n_groups
t1 <- length(p_50_n_100_group_data_s_0.9); t1 

n_cores <- parallel::detectCores() - 1

cl <- parallel::makeCluster( min(n_cores, t1) , type = "SOCK")

doSNOW::registerDoSNOW(cl)

pb <- progress::progress_bar$new(format = " :percent [:bar] :elapsed | eta: :eta",
                                 total = t1 +1 , width = 80)

progress <- function() pb$tick()

opts <- list(progress = progress)

pb$tick()

results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.9 <- foreach(i = 1:t1, .packages=c('jointHWGraph'), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_100_group_data_s_0.9[[i]]
  results <- jointHWGraph(data_list = data_R, parallel_c=F)
  
  results$adjacency_matrices
  
}

stopCluster(cl)

save(results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.9, file="results/result_files/results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.9.RData")



################################################################################
#===============================================================================
# p = 50, n = 20, similarity = 0.5
#===============================================================================
################################################################################


load(file = "simulated_data/group_random/p_50_n_20_group_data_s_0.5.RData")
load(file = "simulated_data/group_random/p_50_n_20_group_adjacency_s_0.5.RData")

n <- dim(p_50_n_20_group_data_s_0.5[[1]][[1]])[1];  n
p <- dim(p_50_n_20_group_data_s_0.5[[1]][[1]])[2]; p
n_groups <- length(p_50_n_20_group_data_s_0.5[[1]]); n_groups
t1 <- length(p_50_n_20_group_data_s_0.5); t1 

n_cores <- parallel::detectCores() - 1

cl <- parallel::makeCluster( min(n_cores, t1) , type = "SOCK")

doSNOW::registerDoSNOW(cl)

pb <- progress::progress_bar$new(format = " :percent [:bar] :elapsed | eta: :eta",
                                 total = t1 +1 , width = 80)

progress <- function() pb$tick()

opts <- list(progress = progress)

pb$tick()

results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.5 <- foreach(i = 1:t1, .packages=c('jointHWGraph'), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_20_group_data_s_0.5[[i]]
  results <- jointHWGraph(data_list = data_R, parallel_c=F)
  
  results$adjacency_matrices
  
}

stopCluster(cl)

save(results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.5, file="results/result_files/results_jointHWGraph_optimal_p_50_n_20_group_data_s_0.5.RData")


################################################################################
#===============================================================================
# p = 50, n = 50, similarity = 0.5
#===============================================================================
################################################################################


load(file = "simulated_data/group_random/p_50_n_50_group_data_s_0.5.RData")
load(file = "simulated_data/group_random/p_50_n_50_group_adjacency_s_0.5.RData")

n <- dim(p_50_n_50_group_data_s_0.5[[1]][[1]])[1];  n
p <- dim(p_50_n_50_group_data_s_0.5[[1]][[1]])[2]; p
n_groups <- length(p_50_n_50_group_data_s_0.5[[1]]); n_groups
t1 <- length(p_50_n_50_group_data_s_0.5); t1 

n_cores <- parallel::detectCores() - 1

cl <- parallel::makeCluster( min(n_cores, t1) , type = "SOCK")

doSNOW::registerDoSNOW(cl)

pb <- progress::progress_bar$new(format = " :percent [:bar] :elapsed | eta: :eta",
                                 total = t1 +1 , width = 80)

progress <- function() pb$tick()

opts <- list(progress = progress)

pb$tick()

results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.5 <- foreach(i = 1:t1, .packages=c('jointHWGraph'), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_50_group_data_s_0.5[[i]]
  results <- jointHWGraph(data_list = data_R, parallel_c=F)
  
  results$adjacency_matrices
  
}

stopCluster(cl)

save(results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.5, file="results/result_files/results_jointHWGraph_optimal_p_50_n_50_group_data_s_0.5.RData")



################################################################################
#===============================================================================
# p = 50, n = 100, similarity = 0.5
#===============================================================================
################################################################################


load(file = "simulated_data/group_random/p_50_n_100_group_data_s_0.5.RData")
load(file = "simulated_data/group_random/p_50_n_100_group_adjacency_s_0.5.RData")

n <- dim(p_50_n_100_group_data_s_0.5[[1]][[1]])[1];  n
p <- dim(p_50_n_100_group_data_s_0.5[[1]][[1]])[2]; p
n_groups <- length(p_50_n_100_group_data_s_0.5[[1]]); n_groups
t1 <- length(p_50_n_100_group_data_s_0.5); t1 

n_cores <- parallel::detectCores() - 1

cl <- parallel::makeCluster( min(n_cores, t1) , type = "SOCK")

doSNOW::registerDoSNOW(cl)

pb <- progress::progress_bar$new(format = " :percent [:bar] :elapsed | eta: :eta",
                                 total = t1 +1 , width = 80)

progress <- function() pb$tick()

opts <- list(progress = progress)

pb$tick()

results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.5 <- foreach(i = 1:t1, .packages=c('jointHWGraph'), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_100_group_data_s_0.5[[i]]
  results <- jointHWGraph(data_list = data_R, parallel_c=F)
  
  results$adjacency_matrices
  
}

stopCluster(cl)

save(results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.5, file="results/result_files/results_jointHWGraph_optimal_p_50_n_100_group_data_s_0.5.RData")




