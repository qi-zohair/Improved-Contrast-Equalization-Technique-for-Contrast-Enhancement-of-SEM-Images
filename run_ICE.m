%% Title: Improved Contrast Equalization Technique

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen. 
% "An improved contrast equalization technique for contrast enhancement in scanning electron microscopy images." 
% Microscopy Research and Technique, vol. 81, no. 10, (2018): pp. 1132-1142. DOI: 10.1002/jemt.23100 
%% INPUTS
% x --> is a given low-contrast image
% mu -- > controls the amount of contrast enhancement

%% OUTPUT
% out --> contrast-enhanced image

%% Starting implementation %%
clear all; clc; close all;

%% Input the image
x = im2double(imread('2.jpg'));

%% Run ICE
mu = 2.5;
tic; out = ICE(x, mu); toc;

%% Display the results
figure; imshow(x); title('Orignal')
figure; imshow(out); title('ICE-Enhanced')

%% Write the output as an image
% imwrite(out,'ICE_mu2.5.jpg')