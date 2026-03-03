#===============================================================================
#===============================================================================
# Group datasets are generated with this file
#===============================================================================
#===============================================================================

library(jointHWGraph)
library(jointHWGraph)

set.seed(42)


################################################################################
# n = 20, p = 50, similarity = 0.9 
################################################################################

n_groups = 3
t1 = 20
similarity = 0.90

n = 20; p = 50

p_50_n_20_group_data_s_0.9 <- list()
p_50_n_20_group_adjacency_s_0.9 <- list()

for(i in 1:t1){
  
  graph_data  <- jointHWGraph::group_data_generator(n=n,p=p,d=p,similarity = similarity,number_of_groups = n_groups)
  
  p_50_n_20_group_data_s_0.9[[i]] <-graph_data$data
  
  p_50_n_20_group_adjacency_s_0.9[[i]] <-graph_data$adjacency_matrix
}
save(p_50_n_20_group_data_s_0.9,file = "simulated_data/group_random/p_50_n_20_group_data_s_0.9.RData")
save(p_50_n_20_group_adjacency_s_0.9 ,file = "simulated_data/group_random/p_50_n_20_group_adjacency_s_0.9.RData")


################################################################################
# n = 20, p = 50, similarity = 0.5 
################################################################################

n_groups = 3
t1 = 20
similarity = 0.50

n = 20; p = 50

p_50_n_20_group_data_s_0.5 <- list()
p_50_n_20_group_adjacency_s_0.5 <- list()

for(i in 1:t1){
  
  graph_data  <- jointHWGraph::group_data_generator(n=n,p=p,d=p,similarity = similarity,number_of_groups = n_groups)
  
  p_50_n_20_group_data_s_0.5[[i]] <-graph_data$data
  
  p_50_n_20_group_adjacency_s_0.5[[i]] <-graph_data$adjacency_matrix
}

save(p_50_n_20_group_data_s_0.5,file = "simulated_data/group_random/p_50_n_20_group_data_s_0.5.RData")
save(p_50_n_20_group_adjacency_s_0.5 ,file = "simulated_data/group_random/p_50_n_20_group_adjacency_s_0.5.RData")


################################################################################
# n = 50, p = 50, similarity = 0.9 
################################################################################

n_groups = 3
t1 = 20
similarity = 0.90

n = 50; p = 50

p_50_n_50_group_data_s_0.9 <- list()
p_50_n_50_group_adjacency_s_0.9 <- list()

for(i in 1:t1){
  
  graph_data  <- jointHWGraph::group_data_generator(n=n,p=p,d=p,similarity = similarity,number_of_groups = n_groups)
  
  p_50_n_50_group_data_s_0.9[[i]] <-graph_data$data
  
  p_50_n_50_group_adjacency_s_0.9[[i]] <-graph_data$adjacency_matrix
}

save(p_50_n_50_group_data_s_0.9,file = "simulated_data/group_random/p_50_n_50_group_data_s_0.9.RData")
save(p_50_n_50_group_adjacency_s_0.9 ,file = "simulated_data/group_random/p_50_n_50_group_adjacency_s_0.9.RData")


################################################################################
# n = 50, p = 50, similarity = 0.5 
################################################################################

n_groups = 3
t1 = 20
similarity = 0.50

n = 50; p = 50

p_50_n_50_group_data_s_0.5 <- list()
p_50_n_50_group_adjacency_s_0.5 <- list()

for(i in 1:t1){
  
  graph_data  <- jointHWGraph::group_data_generator(n=n,p=p,d=p,similarity = similarity,number_of_groups = n_groups)
  
  p_50_n_50_group_data_s_0.5[[i]] <-graph_data$data
  
  p_50_n_50_group_adjacency_s_0.5[[i]] <-graph_data$adjacency_matrix
}

save(p_50_n_50_group_data_s_0.5,file = "simulated_data/group_random/p_50_n_50_group_data_s_0.5.RData")
save(p_50_n_50_group_adjacency_s_0.5 ,file = "simulated_data/group_random/p_50_n_50_group_adjacency_s_0.5.RData")

################################################################################
# n = 100, p = 50, similarity = 0.9 
################################################################################

n_groups = 3
t1 = 20
similarity = 0.90

n = 100; p = 50

p_50_n_100_group_data_s_0.9 <- list()
p_50_n_100_group_adjacency_s_0.9 <- list()

for(i in 1:t1){
  
  graph_data  <- jointHWGraph::group_data_generator(n=n,p=p,d=p,similarity = similarity,number_of_groups = n_groups)
  
  p_50_n_100_group_data_s_0.9[[i]] <-graph_data$data
  
  p_50_n_100_group_adjacency_s_0.9[[i]] <-graph_data$adjacency_matrix
}

save(p_50_n_100_group_data_s_0.9,file = "simulated_data/group_random/p_50_n_100_group_data_s_0.9.RData")
save(p_50_n_100_group_adjacency_s_0.9 ,file = "simulated_data/group_random/p_50_n_100_group_adjacency_s_0.9.RData")


################################################################################
# n = 100, p = 50, similarity = 0.5 
################################################################################

n_groups = 3
t1 = 20
similarity = 0.50

n = 100; p = 50

p_50_n_100_group_data_s_0.5 <- list()
p_50_n_100_group_adjacency_s_0.5 <- list()

for(i in 1:t1){
  
  graph_data  <- jointHWGraph::group_data_generator(n=n,p=p,d=p,similarity = similarity,number_of_groups = n_groups)
  
  p_50_n_100_group_data_s_0.5[[i]] <-graph_data$data
  
  p_50_n_100_group_adjacency_s_0.5[[i]] <-graph_data$adjacency_matrix
}

save(p_50_n_100_group_data_s_0.5,file = "simulated_data/group_random/p_50_n_100_group_data_s_0.5.RData")
save(p_50_n_100_group_adjacency_s_0.5 ,file = "simulated_data/group_random/p_50_n_100_group_adjacency_s_0.5.RData")
