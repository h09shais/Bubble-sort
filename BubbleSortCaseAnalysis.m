close all;
clear all;
clc;

X = [100:500:5000];
 
for m = 1:length(X)
    a = 1 : X(m);
    t1 = tic;  
    AfterBubbleSort = bubblesort(a);
    YBest(m) = toc(t1);
end
 
 
figure('Name','Bubble Sort simulation','NumberTitle','off');
plot(X, YBest,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10)
hold on;
title('Bubble Sort analysis');
xlabel('No of Input');
ylabel('Execution Time(sec.)');
 
 
for m = 1:length(X)
    a = 1 : X(m);
    index1 = 1;
    index2 = length(a);
    b = zeros(1,length(a));
    while (index2 >= 1)
        b(index1) = a(index2);
        index1 = index1 + 1;
        index2 = index2 - 1;
    end
 
    t1 = tic;  
    AfterBubbleSort = bubblesort(b);
    YWorst(m) = toc(t1);
end
 
plot(X, YWorst,'--bo','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','y',...
                'MarkerSize',10)
hold on;
 
for m = 1:length(X)
    t1 = tic;  
    AfterBubbleSort = bubblesort(randperm(X(m)));
    YAverage(m) = toc(t1);
end
 
plot(X, YAverage,'-+c','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','m',...
                'MarkerSize',10)
grid on;
 
set(legend('Sorted Data','Reverse Data','Average Case',2),'Interpreter','none');
