clear all;
close all;
patient_data = csvread('data/inflammation-01.csv');
disp(['Maximum inflammation:', num2str(max(patient_data(:)))]);
disp(['Minimum inflammation:', num2str(min(patient_data(:)))]);
disp(['Std inflammation:', num2str(std(patient_data(:)))]);
subplot(1,3,1);
plot(min(patient_data,[],1))
ylabel('min')
subplot(1,3,2);
plot(max(patient_data,[],1))
ylabel('max')
subplot(1,3,3);
plot(std(patient_data))
ylabel('std')
