function res = uniform_5case_plus()

    if rand(1) <= 0.9
        res = randi([4, 5], 1, 1);
    else
        res = randi(3, 1, 1);
    end
    
end