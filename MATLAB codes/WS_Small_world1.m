% H = WattsStrogatz(N,K,beta) returns a Watts-Strogatz model graph with N
% nodes, N*K edges, mean node degree 2*K, and rewiring probability beta.
%
% beta = 0 is a ring lattice, and beta = 1 is a random graph.

% Connect each node to its K next and previous neighbors. This constructs
% indices for a ring lattice.


G = WattsStrogatz(4941,2,0.2);
plot(G,'NodeColor','k','EdgeAlpha',0.1);
title('Watts-Strogatz Graph with $N = 500$ nodes, $K = 25$, and $\beta = 1$', ...
'Interpreter','latex')
 Graph_nodes = numnodes(G);
 Graph_edges = numedges(G);
 
A_WS_sparse = adjacency(G);
A_WS = full(A_WS_sparse);
