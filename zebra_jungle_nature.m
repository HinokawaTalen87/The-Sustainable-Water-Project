clc; clear; close all; 

%Function used to promote water conservation and responsible water use

%Function inputs 
%water_usage - data matrix of user's water usage
%water_allocation - data matrix with allocated water (by region) 
%drought_intensity - data matrix of drought intensity (by region) 

%Function outputs
%water_efficiency - average water efficiency rating

function water_efficiency = water_conservation(water_usage, water_allocation, drought_intensity)

%Initialize array to save water efficiency
water_efficiency = zeros(length(water_usage),1);

%Loop through each region
for region = 1:length(water_usage)
    
    %Calculate current water efficiency
    cur_efficiency = water_usage(region) ./ water_allocation(region);
    
    %Adjust water efficiency based on drought intensity
    water_efficiency(region) = cur_efficiency ./ (1 + drought_intensity(region));
    
end

%Calculate average water efficiency 
water_efficiency = mean(water_efficiency);

end

%% Script 

%Create data matrices 
num_regions = 5; 
water_usage = randi([1,100], num_regions, 1); 
water_allocation = randi([1,100], num_regions, 1); 
drought_intensity = rand(num_regions, 1); 

%Call water_conservation function 
water_efficiency = water_conservation(water_usage, water_allocation, drought_intensity); 

%Print water efficiency to command window
fprintf('Average Water efficiency rating = %0.2f\n', water_efficiency)

%%
%Water conservation education program

%Function used to educate users on water conservation

function water_conservation_training()

%Create array of slides
slides = {'Introduction to Water Conservation', ... 
    'Water Use and Efficiency', ...
    'Drought Preventions Tips', ...
    'Best Practices for Water Use', ...
    'Tools and Technologies'};

%Loop through each slide
for i = 1:length(slides)
   
    %Print slide title to command window
    fprintf('Slide %d: %s\n', i, slides{i})
    
    %Show slide to user
    display_slide(slides{i})  
end 

end

%%
%Water policy development program 

%Function used to create water policies

function develop_water_policy(water_usage, water_allocation, drought_intensity)

%Create policy options
policy_options = {'Restrict water usage', ... 
    'Increase water allocation', ...
    'Levy fines for overuse', ...
    'Develop water-saving technology'};

%Loop through policy options
for i = 1:length( policy_options)
    
    %Print policy option to command window
    fprintf('Option %d: %s\n', i, policy_options{i})
    
    %Evaluate appropriateness of policy option
    evaluate_policy( water_usage, water_allocation, drought_intensity, policy_options{i})
end

end

%%
%Public awareness program

%Function used to raise public awareness of water conservation 

function public_awareness()

%Create array of topics
topics = {'Effects of water scarcity', ... 
    'Importance of water conservation', ...
    'Drought prevention strategies', ...
    'Best practices for water use'};

%Loop through each topic
for i = 1:length(topics)
   
    %Print topic to command window
    fprintf('Topic %d: %s\n', i, topics{i})
    
    %Show topic to user
    present_topic(topics{i})  
end 

end