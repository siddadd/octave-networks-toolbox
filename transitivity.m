% Calculate the transitivity.
% C = number of triangle loops (3-cycles) / number of connected triples
% Ref: M. E. J. Newman, "The structure and function of complex networks"
% Note: Valid for directed and undirected graphs
%
% INPUT: adjacency matrix, nxn
% OUTPUT: The transitivity, C
%
% Other routines used: loops3.m, numConnTriples.m
% GB, Last updated: February 6, 2015
% Input/corrections by Dimitris Maniadakis.


function [C] = transitivity(adj)

C=3*loops3(adj)/(numConnTriples(adj)+2*loops3(adj));
