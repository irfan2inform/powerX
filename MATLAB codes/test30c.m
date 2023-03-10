
A_mH = [0 1 1 0; 1 0 1 1; 1 1 0 1; 0 1 1 0];
s = size(A_mH);

Total_Nodes = 4941 ;

while(length(A_mH) < Total_Nodes)
                
deg1 = sum(A_mH);

[s,t] = size(A_mH); 

Node_Name_degree_dist = deg1/sum(deg1,'all');


sample_space = 1:t;     % The nodes from where to pick the two random nodes
nodes1 = randsample(sample_space,2,true, Node_Name_degree_dist);    % Pick two random nodes
%nodes1 = randsample(sample_space,2);    % Pick two random nodes
if nodes1(1) ~= nodes1(2)
    A_mH(nodes1(1),t+1) = 1; 
    A_mH(t+1,nodes1(1)) = 1;                   
    A_mH(nodes1(2),t+1) = 1;
    A_mH(t+1,nodes1(2)) = 1;
end

% if A(nodes1(1,1),nodes1(1,2)) == 1        %Modified by me
%     A(nodes1(1,1),nodes1(1,2)) = 0;
%      A(nodes1(1,2),nodes1(1,1)) = 0;
% else
%     A(nodes1(1,1),nodes1(1,2)) = 1;
%     A(nodes1(1,2),nodes1(1,1)) = 1;
% end


if A_mH(nodes1(1),nodes1(2)) == 0        %Heneberg Model
    A_mH(nodes1(1),nodes1(2)) = 1;         
    A_mH(nodes1(2),nodes1(1)) = 1;
end


end


clearvars -except A_real A_prop A_H A_mH A_rand;

















% 
% % Just to make the matrix complete
% Node_Name_degree_dist = deg1/sum(deg1,'all');
% 
% % for ind1 = 1 : Total_Nodes
% %     deg1 (ind1) = sum(A(ind1,:));
% % end
% 
% % for ind = 1:100
% % deg (ind) = sum(A(ind,:));
% % end
% % 
% % Avg_degree = sum(deg)/s(1,1)
% % 
% 
% tab1 = tabulate(deg1);      % It finds the frequency of occurance of the degrees
% degree_dist = tab1(:,3);
% 
% G = graph(A_mH);
% Graph_nodes = numnodes(G);
% Graph_edges = numedges(G);
% 
% 
% figure(1)
% loglog(1:max(deg1),degree_dist, 'LineStyle',':', 'Marker','*','MarkerSize',7, 'color','blue', 'DisplayName','Modified Henneberg')
% title('Log plot of Degree Distribution')
% xlabel('k')
% ylabel('p (k)')
% 
% cc = clustering_coef_bu(A_mH);
% tab2 = tabulate(cc);
% cc_dist = tab2(:,3);
% Avg_cc = sum(cc)/Graph_nodes;
% 
% figure(2)
% loglog(tab2(:,1),tab2(:,3)/100, 'LineStyle',':', 'Marker','*','MarkerSize',7, 'color','blue', 'DisplayName','Modified Henneberg')
% title('Log plot of Clustering Coefficient')
% xlabel('k')
% ylabel('p(k)')
% 
% 
% Degree_1_nodes = sum(deg1(:)==1)
% Avg_degree = mean(deg1)
% Max_degree_of_Nw = max(deg1)
% 
% 
% 
% %Function from BCT
% % Modularity = modularity_und(A);
% Density = density_und(A_mH); 
% % Distance = distance_bin(A);
% % Edge_betweenness = edge_betweenness_bin(A);
% % K_Core = kcore_bu(A);
% 
% 
% graphtogml('para4.gml',A_mH);
% 
% 
% % Node_Name = 1: Total_Nodes;
% % % figure(2)
% % %     
% % % bar(Node_Name, deg1)
% % % 
% % % title('Nodes Vs Degree')
% % % xlabel('Name of the Node')
% % % ylabel('Degree')
% % 
% % 
% % Degree_1_nodes = sum(deg1(:)==1)
% % Max_degree_of_Nw = max(deg1)
% % 
% % 
% % 
% % 
% % %Uses the function network_density stored in the current directory. 
% % density = network_density(A);
% % %Avg_Degree = average_degree(A);
% % 
% % 
% % 
% % 
% % % figure(2)
% % % %p = plot(G, 'Layout', 'force', 'UseGravity', true, 'Nodecolor','r')
% % % %plot(G,'Layout','force','EdgeAlpha',0.005,'NodeColor','r');
% % % p = plot(G,'Layout', 'circle', 'EdgeAlpha',0.1, 'Nodecolor','r')
% % % %title('Circular Graph')
% % % title(['Nodes = ',num2str(Graph_nodes),',          Edges = ',num2str(Graph_edges),' '])
% % % d = distances(G);    %Calculates the shortest distances (paths) between all nodes
% % % d1 = sum(d,'all');        % Sum the values in array D and return one values.
% % % d1 = d1 / 2;            %%% The previous line adds all the distances in the matrix which counts each path twice. 
% % %                         %%% So we need to eliminate half of it. 
% % %                         
% % % Avg_Path_length = d1/((Total_Nodes*(Total_Nodes-1))/2) 
% % % 
% % % % % % % EdgeAlpha ? Transparency of graph edges
% % % % % % % 0.5 (default) | scalar value between 0 and 1 inclusive
% % % % % % % Transparency of graph edges, specified as a scalar value between 0 and 1 inclusive. A value of 1 means fully opaque and 0 means completely transparent (invisible).
% % % % % % % 
% % % % % % % Example: 0.25
% % % 
% % % 
% % % % 
% % % % figure(3)
% % % % histogram(deg1)
% % % % title('Histogram')
% % % % xlabel('Degree')
% % % % ylabel('Number of Nodes')
% % % % % 
% % % % % 
% % % % % 
% % % % % y1 = y.Values
% % % % % Node_No = 1:1200;
% % % % % plot(Node_No,deg1)
% % % % % 
% % % % % 
% % % % % 
% % % % % 
% % % % % 
% % % 
% % % % figure(3)
% % % % plot(Node_Name,degree_dist1)
% % % % title('Degree Distribution')
% % % % xlabel('Degree')
% % % % ylabel('Percentage of Nodes having degree X')
% % % % 
% % % % 
% % % % 
% % % % 
% % % %tt = 1:max(deg1);
% % % % tab1 = tabulate(deg1)
% % % 
% % % % 
% % %                        
% % % % 
% % % % ucc = centrality(G,'closeness');
% % % % p.NodeCData = ucc;
% % % % colormap jet
% % % % colorbar
% % % % title('Closeness Centrality Scores - Unweighted')
% % % % 
% % % % deg_ranks = centrality(G,'degree','Importance',G.Edges.Weight);
% % % % edges = linspace(min(deg_ranks),max(deg_ranks),7);
% % % % bins = discretize(deg_ranks,edges);
% % % % p.MarkerSize = bins;
% % % 
