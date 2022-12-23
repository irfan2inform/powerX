% clear;

mtx = readmatrix('power-US-Grid2.txt');    %Facebook network of 769 Nodes and Edges 16.7K

Nodes = 4941;
Edges = 6594;
A_real = zeros(Nodes);

for i = 1:Edges

    A_real(mtx(i,1),mtx(i,2)) = 1;
    A_real(mtx(i,2),mtx(i,1)) = 1;
end

clearvars -except A_real A_prop A_H A_mH A_rand;





% A = [0 1 1 0; 1 0 1 1; 1 1 0 1; 0 1 1 0];
% s = size(A);
% 
% Total_Nodes = 300 ;
% 
% while(length(A) < Total_Nodes)
%     
%                            
% 
%     deg1 = sum(A);
% 
% 
% %tab1 = tabulate(deg1);      % It finds the frequency of occurance of the degrees
% %degree_dist = tab1(:,3);
% 
% 
% [s,t] = size(A); 
% % t = s (1,1);             % Just pick one of the size 
%     
% % A(t+1,t+1) = 0;         % Add one row and one column, and make the diagonal element equal to 0   
% 
% %%% Node_Name_degree_dist means that each node has its own degree
% %%% distribution
% 
% %%// degree_dist means that each degree has its distribution which is used
% %%// to draw the power law curve. 
% 
% Node_Name_degree_dist = deg1/sum(deg1,'all');
% 
% %degree_dist1 = transpose(degree_dist1)
% 
% sample_space = 1:t;     % The nodes from where to pick the two random nodes
% if (mod(t,2) == 1) 
%     
%     nodes1 = randsample(sample_space,2,true, Node_Name_degree_dist);    % Pick two random nodes
% else
%     
% nodes1 = randsample(sample_space,2);    % Pick two random nodes
% end
% 
% if nodes1(1) ~= nodes1(2)
%     A(nodes1(1),t+1) = 1; 
%     A(t+1,nodes1(1)) = 1;
%     
%     if mod(t,2) == 0            % For Even Node, skip the second connection
%     A(nodes1(2),t+1) = 1;
%     A(t+1,nodes1(2)) = 1;
%     end
% end
% 
% % if A(nodes1(1),nodes1(2)) == 1        %Modified by me
% %     A(nodes1(1),nodes1(2)) = 0;
% %      A(nodes1(2),nodes1(1)) = 0;
% % else
% %     A(nodes1(1),nodes1(2)) = 1;
% %     A(nodes1(2),nodes1(1)) = 1;
% % end
% 
% 
% % if A(nodes1(1),nodes1(2)) == 0        %Heneberg Model
% %     A(nodes1(1),nodes1(2)) = 1;         
% %     A(nodes1(2),nodes1(1)) = 1;
% % end
% 
% 
% 
% weights = deg1/max(deg1);
% 
% 
% 
% end

% G = graph(A_real);
% Graph_nodes = numnodes(G);
% Graph_edges = numedges(G);
% 
% 
% deg1 = sum(A_real);
% tab1 = tabulate(deg1);      % It finds the frequency of occurance of the degrees
% degree_dist = tab1(:,3);
% 
% figure(1)
% loglog(1:max(deg1),degree_dist, 'LineStyle',':', 'LineWidth',1.4,'Marker','x','MarkerSize',8, 'color','black', 'DisplayName','Real Data')
% title('Log Plot of Degree Distribution')
% xlabel('k')
% ylabel('p (k)')
% 
% 
% cc = clustering_coef_bu(A_real);
% tab2 = tabulate(cc);
% cc_dist = tab2(:,3);
% Avg_cc = sum(cc)/Graph_nodes;
% 
% figure(2)
% loglog(tab2(:,1),tab2(:,3)/100, 'LineStyle',':', 'Marker','x','MarkerSize',8, 'color','black', 'DisplayName','Real Data')
% title('Log plot of Clustering Coefficient')
% xlabel('k')
% ylabel('p (k)')
% 
% Degree_1_nodes = sum(deg1(:)==1)
% Avg_degree = mean(deg1)
% Max_degree_of_Nw = max(deg1)
% 
% 
% %Function from BCT
% % Modularity = modularity_und(A);
% Density = density_und(A_real);
% 
% Distance = distance_bin(A_real);
% % Edge_betweenness = edge_betweenness_bin(A);
% % K_Core = kcore_bu(A);
% 
% Distance(Distance==inf) = 0;
% Avg_distance = mean2(Distance);
% 
% 
% % graphtogml('para1.gml',A);
% 
% %adj2gephilab('para1a',A);
% 
% %Matrix2GraphML(A, 'C:\Temp\mat_01.graphml');
% 
% adj2pajek(A_real, 'pajek1.net')
% 
% % figure(2)
% % loglog(tab2(:,1),tab2(:,3), 'LineStyle','none', 'Marker','x', 'color','black')
% % title('Log plot of Clustering Coefficient')
% % xlabel('k')
% % ylabel('p(k)')
% 

