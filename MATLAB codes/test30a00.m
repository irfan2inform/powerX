% clear 


A_prop00 = [0 1 1 0; 1 0 1 1; 1 1 0 1; 0 1 1 0];
s = size(A_prop00);

Total_Nodes = 4941 ;
While_loop_iterations = 0;

while(length(A_prop00) < Total_Nodes)

    deg1 = sum(A_prop00);

[s,t] = size(A_prop00); 

Node_Name_degree_dist = deg1/sum(deg1,'all');

sample_space = 1:t;     % The nodes from where to pick the two random nodes

    if (mod(t,2) == 1)    
        nodes1 = randsample(sample_space,2,true, Node_Name_degree_dist);    % Pick two random nodes
    else    
        nodes1 = randsample(sample_space,2);    % Pick two random nodes
    end

    if nodes1(1) ~= nodes1(2)
        A_prop00(nodes1(1),t+1) = 1; 
        A_prop00(t+1,nodes1(1)) = 1;
    
            if mod(t,2) == 0            % For Even Node, skip the second connection
            A_prop00(nodes1(2),t+1) = 1;
            A_prop00(t+1,nodes1(2)) = 1;

%                 % p = 1/5 = 0.2
%                 if  ((randsample(1:5,1,true) == 1) ) && ( A_prop(nodes1(1),nodes1(2)) == 0 )       %Heneberg Model
%                 A_prop(nodes1(1),nodes1(2)) = 1;         
%                 A_prop(nodes1(2),nodes1(1)) = 1;
%                 end        
        
%                     %p = 2/5 = 0.4
%                     if  ((randsample(1:5,1,true) == 1) || (randsample(1:5,1,true) == 2)) && ( A_prop(nodes1(1),nodes1(2)) == 0 )       %Heneberg Model
%                     A_prop(nodes1(1),nodes1(2)) = 1;         
%                     A_prop(nodes1(2),nodes1(1)) = 1;
%                     end
        
%             % p = 3/5 = 0.6
%                     if  ((randsample(1:5,1,true) == 1) || (randsample(1:5,1,true) == 2) || (randsample(1:5,1,true) == 3)) && ( A_prop(nodes1(1),nodes1(2)) == 0 )       %Heneberg Model
%                     A_prop(nodes1(1),nodes1(2)) = 1;         
%                     A_prop(nodes1(2),nodes1(1)) = 1;
%                     end
% 
%             % p = 4/5 = 0.8
%                     if  ((randsample(1:5,1,true) == 1) || (randsample(1:5,1,true) == 2) || (randsample(1:5,1,true) == 3) || (randsample(1:5,1,true) == 4)) && ( A_prop(nodes1(1),nodes1(2)) == 0 )       %Heneberg Model
%                     A_prop(nodes1(1),nodes1(2)) = 1;         
%                     A_prop(nodes1(2),nodes1(1)) = 1;
%                     end
% 
%             % p = 1
%                     if  A_prop(nodes1(1),nodes1(2)) == 0        %Heneberg Model
%                     A_prop(nodes1(1),nodes1(2)) = 1;         
%                     A_prop(nodes1(2),nodes1(1)) = 1;
%                     end

            end
    end
While_loop_iterations = While_loop_iterations + 1; 
end  % While loop ends. 


clearvars -except A_real A_prop00 A_H A_mH A_rand;




















% deg1 = sum(A_prop);
% 
% G = graph(A_prop);
% Graph_nodes = numnodes(G);
% Graph_edges = numedges(G);
% 
% % Edges_removed = 1;
% % Edge_removal_iterations = 0;
% % while (Edges_removed < Graph_edges-6595 )
% %     temp1 = randsample(1:4941, 2);
% %     if(A(temp1(1), temp1(2)) == 1 && (sum(A(:,temp1(1))) > 2) && (sum(A(:,temp1(2))) > 2) )
% %         A(temp1(1), temp1(2)) = 0;
% %         A(temp1(2), temp1(1)) = 0;
% %         Edges_removed = Edges_removed + 1;
% %     end   
% %     Edge_removal_iterations = Edge_removal_iterations + 1;
% % end
% % 
% % % TO find the number of edges after the removal
% % G = graph(A);
% % Graph_edges2 = numedges(G);
% 
% 
% % To Construct the Degree Distribution Plot 
% tab1 = tabulate(deg1);      % It finds the frequency of occurance of the degrees
% degree_dist = tab1(:,3);
% % figure(1)
% % loglog(1:max(deg1),degree_dist, 'LineStyle',':', 'Marker','o','MarkerSize',7, 'color','red', 'DisplayName','Proposed Model')
% % title('Log plot of Degree Distribution')
% % xlabel('k')
% % ylabel(' p(k)')
% figure(1)
% loglog(1:max(deg1),degree_dist, 'LineStyle',':', 'LineWidth',1.4,'Marker','*','MarkerSize',7, 'color','red', 'DisplayName','Proposed Model')
% title('Log Plot of Degree Distribution')
% xlabel('k')
% ylabel('p (k)')
% 
% % To construct the Clustering Coefficient Plot 
% cc = clustering_coef_bu(A_prop);
% tab2 = tabulate(cc);
% cc_dist = tab2(:,3);
% Avg_cc = sum(cc)/Graph_nodes;
% 
% figure(2)
% loglog(tab2(:,1),tab2(:,3)/100, 'LineStyle',':', 'Marker','o','MarkerSize',7, 'color','red', 'DisplayName','Proposed Model')
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
% Density = density_und(A_prop); 
% Distance = distance_bin(A_prop);
% % Edge_betweenness = edge_betweenness_bin(A);
% % K_Core = kcore_bu(A);
% 
% Distance(Distance==inf) = 0;
% Avg_distance = mean2(Distance);
% 
% 
% graphtogml('para2.gml',A_prop);


