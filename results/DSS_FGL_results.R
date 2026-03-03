################################################################################
################################################################################
################################################################################
################################################################################
#
# DSS-FGL
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

results_DSS_FGL_p_50_n_20_group_data_s_0.9 <- foreach(i = 1:t1, .packages=c('spikeyglass',"rags2ridges"), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_20_group_data_s_0.9[[i]]
  
  fit <- spikeyglass::ssjgl(
    Y = data_R,
    penalty = "fused",
    lambda0 = 0.05,  # slab penalty
    lambda1 = 0.2,   # spike penalty (sparsius)
    lambda2 = 0.1,   # group/shared penalty (verkkojen samankaltaisuus)
    v1 = 1,          # slab variance
    v0s = c(0.02, 0.02)
  )
  
  rags2ridges::adjacentMat(fit$thetalist[[1]][[1]])
  
  adj.mat1 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[1]]) # the estimated adjacency matrix of graph 1
  adj.mat2 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[2]]) # the estimated adjacency matrix of graph 2
  adj.mat3 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[3]]) # the estimated adjacency matrix of graph 3
  
  list(adj.mat1,adj.mat2,adj.mat3)
}

stopCluster(cl)

save(results_DSS_FGL_p_50_n_20_group_data_s_0.9, file="results/result_files/results_DSS_FGL_p_50_n_20_group_data_s_0.9.RData")




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

results_DSS_FGL_p_50_n_50_group_data_s_0.9 <- foreach(i = 1:t1, .packages=c('spikeyglass',"rags2ridges"), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_50_group_data_s_0.9[[i]]
  
  
  fit <- spikeyglass::ssjgl(
    Y = data_R,
    penalty = "fused",
    lambda0 = 0.05,  # slab penalty
    lambda1 = 0.2,   # spike penalty (sparsius)
    lambda2 = 0.1,   # group/shared penalty (verkkojen samankaltaisuus)
    v1 = 1,          # slab variance
    v0s = c(0.02, 0.02)
  )
  
  rags2ridges::adjacentMat(fit$thetalist[[1]][[1]])
  
  adj.mat1 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[1]]) # the estimated adjacency matrix of graph 1
  adj.mat2 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[2]]) # the estimated adjacency matrix of graph 2
  adj.mat3 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[3]]) # the estimated adjacency matrix of graph 3
  
  list(adj.mat1,adj.mat2,adj.mat3)
}

stopCluster(cl)

save(results_DSS_FGL_p_50_n_50_group_data_s_0.9, file="results/result_files/results_DSS_FGL_p_50_n_50_group_data_s_0.9.RData")



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

results_DSS_FGL_p_50_n_100_group_data_s_0.9 <- foreach(i = 1:t1, .packages=c('spikeyglass',"rags2ridges"), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_100_group_data_s_0.9[[i]]
  
  
  fit <- spikeyglass::ssjgl(
    Y = data_R,
    penalty = "fused",
    lambda0 = 0.05,  # slab penalty
    lambda1 = 0.2,   # spike penalty (sparsius)
    lambda2 = 0.1,   # group/shared penalty (verkkojen samankaltaisuus)
    v1 = 1,          # slab variance
    v0s = c(0.02, 0.02)
  )
  
  rags2ridges::adjacentMat(fit$thetalist[[1]][[1]])
  
  adj.mat1 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[1]]) # the estimated adjacency matrix of graph 1
  adj.mat2 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[2]]) # the estimated adjacency matrix of graph 2
  adj.mat3 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[3]]) # the estimated adjacency matrix of graph 3
  
  list(adj.mat1,adj.mat2,adj.mat3)   
}

stopCluster(cl)

save(results_DSS_FGL_p_50_n_100_group_data_s_0.9, file="results/result_files/results_DSS_FGL_p_50_n_100_group_data_s_0.9.RData")



################################################################################
#===============================================================================
# p = 50, n = 20, similarity = 0.5
#===============================================================================
################################################################################


load(file = "simulated_data/group_random/p_50_n_20_group_data_s_0.5.RData")
load(file = "simulated_data/group_random/p_50_n_20_group_adjacency_s_0.5.RData")

n <- dim(p_50_n_20_group_data_s_0.5[[1]][[1]])[1];n
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

results_DSS_FGL_p_50_n_20_group_data_s_0.5 <- foreach(i = 1:t1, .packages=c('spikeyglass',"rags2ridges"), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_20_group_data_s_0.5[[i]]
  
  
  fit <- spikeyglass::ssjgl(
    Y = data_R,
    penalty = "fused",
    lambda0 = 0.05,  # slab penalty
    lambda1 = 0.2,   # spike penalty (sparsius)
    lambda2 = 0.1,   # group/shared penalty (verkkojen samankaltaisuus)
    v1 = 1,          # slab variance
    v0s = c(0.02, 0.02)
  )
  
  rags2ridges::adjacentMat(fit$thetalist[[1]][[1]])
  
  adj.mat1 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[1]]) # the estimated adjacency matrix of graph 1
  adj.mat2 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[2]]) # the estimated adjacency matrix of graph 2
  adj.mat3 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[3]]) # the estimated adjacency matrix of graph 3
  
  list(adj.mat1,adj.mat2,adj.mat3)
}

stopCluster(cl)

save(results_DSS_FGL_p_50_n_20_group_data_s_0.5, file="results/result_files/results_DSS_FGL_p_50_n_20_group_data_s_0.5.RData")




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

results_DSS_FGL_p_50_n_50_group_data_s_0.5 <- foreach(i = 1:t1, .packages=c('spikeyglass',"rags2ridges"), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_50_group_data_s_0.5[[i]]
  
  
  fit <- spikeyglass::ssjgl(
    Y = data_R,
    penalty = "fused",
    lambda0 = 0.05,  # slab penalty
    lambda1 = 0.2,   # spike penalty (sparsius)
    lambda2 = 0.1,   # group/shared penalty (verkkojen samankaltaisuus)
    v1 = 1,          # slab variance
    v0s = c(0.02, 0.02)
  )
  
  rags2ridges::adjacentMat(fit$thetalist[[1]][[1]])
  
  adj.mat1 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[1]]) # the estimated adjacency matrix of graph 1
  adj.mat2 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[2]]) # the estimated adjacency matrix of graph 2
  adj.mat3 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[3]]) # the estimated adjacency matrix of graph 3
  
  list(adj.mat1,adj.mat2,adj.mat3)
}

stopCluster(cl)

save(results_DSS_FGL_p_50_n_50_group_data_s_0.5, file="results/result_files/results_DSS_FGL_p_50_n_50_group_data_s_0.5.RData")



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

results_DSS_FGL_p_50_n_100_group_data_s_0.5 <- foreach(i = 1:t1, .packages=c('spikeyglass',"rags2ridges"), .options.snow = opts) %dopar% {
  
  set.seed(i)
  data_R <- p_50_n_100_group_data_s_0.5[[i]]
  
  
  fit <- spikeyglass::ssjgl(
    Y = data_R,
    penalty = "fused",
    lambda0 = 0.05,  # slab penalty
    lambda1 = 0.2,   # spike penalty (sparsius)
    lambda2 = 0.1,   # group/shared penalty (verkkojen samankaltaisuus)
    v1 = 1,          # slab variance
    v0s = c(0.02, 0.02)
  )
  
  rags2ridges::adjacentMat(fit$thetalist[[1]][[1]])
  
  adj.mat1 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[1]]) # the estimated adjacency matrix of graph 1
  adj.mat2 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[2]]) # the estimated adjacency matrix of graph 2
  adj.mat3 <- rags2ridges::adjacentMat(fit$thetalist[[1]][[3]]) # the estimated adjacency matrix of graph 3
  
  list(adj.mat1,adj.mat2,adj.mat3)
}

stopCluster(cl)

save(results_DSS_FGL_p_50_n_100_group_data_s_0.5, file="results/result_files/results_DSS_FGL_p_50_n_100_group_data_s_0.5.RData")
