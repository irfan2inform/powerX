% clear;
% % G = erdosRenyi(50,0.1,4);
% % plotGraphBasic(G,6,1);
% % 
% % A = G.Adj;
% % 
% % G1 = graph(A);
% % Graph_nodes = numnodes(G1);
% % Graph_edges = numedges(G1);


A_rand = random_graph(4941, 0.00054);


clearvars -except A_real A_prop A_H A_mH A_rand;








% G = graph(A);
% Graph_nodes = numnodes(G);
% Graph_edges = numedges(G);
% 
% deg1 = sum(A);
% 
% tab1 = tabulate(deg1);      % It finds the frequency of occurance of the degrees
% degree_dist = tab1(:,3);
% 
% figure(1)
% loglog(0:max(deg1),degree_dist, 'LineStyle',':', 'Marker','s','MarkerSize',7, 'color','green', 'DisplayName','ER Random Graph')
% title('Log plot of Degree Distribution')
% xlabel('k')
% ylabel('p (k)')
% 
% cc = clustering_coef_bu(A);
% tab2 = tabulate(cc);
% cc_dist = tab2(:,3);
% Avg_cc = sum(cc)/Graph_nodes;
% 
% figure(2)
% loglog(tab2(:,1),tab2(:,3)/100, 'LineStyle',':', 'Marker','s','MarkerSize',7, 'color','green', 'DisplayName','ER Random Graph')
% title('Log plot of Clustering Coefficient')
% xlabel('k')
% ylabel('p(k)')
% 
% Degree_1_nodes = sum(deg1(:)==1)
% Avg_degree = mean(deg1)
% Max_degree_of_Nw = max(deg1)
% 
% 
% 
% %Function from BCT
% %Modularity = modularity_und(A);
% Density = density_und(A); 
% %Distance = distance_bin(A);     % Returns Inf for the unconnected nodes
% % Edge_betweenness = edge_betweenness_bin(A);
% % K_Core = kcore_bu(A);
% 
% 
% 
% adj2gephilab('para5a',A);
% %Avg_distance = mean2(Distance);

% 
% To rewire, with probability (p=0.01) a 100 vertex regular graph (vertex deg=4):
% >>G=erdosRenyi(40,0.01,4);
% 
% To see display the graph issue:
% >>plotGraphBasic(G,6,1);
% 
% 6 is the marker size. 1 tells function to add labels (0 disables labbeling)