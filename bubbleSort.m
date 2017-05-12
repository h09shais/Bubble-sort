function Array = bubbleSort(Array)
N = length(Array);
for outer = 1 : (N-1)
    for i=1:(N-1) 
    
        if Array(i)>Array(i+1) 
            Temp      = Array(i); 
            Array(i)   = Array(i+1); 
            Array(i+1) = Temp;
        end
    end
end
