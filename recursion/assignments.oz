%% 1. Write a function to calculate the sum of squares of a list

%% 2. Take the following process and write an equivalent iterative process 
fun {Exp X N}
    if N == 0 then 1
    else X * {Exp X N-1}
    end
end


%% 3. Take the following process and write an equivalent iterative process
fun {Title S}
    case S of nil then ''''
    [] X|nil then '''' 
    [] X|Y|Xs then 
        if X == ' ' then {Append {Upper Y} {Title Xs}}
        else {Append {Upper X} Y|{Title Xs}}
        end 
    end
end

%% 4. Take the following process and write an equivalent iterative process 
fun {Fact N}
    if N == 0 then 1
    else {Fact N-1} * N 
    end
end


%% 5. Implement the lookup function in a search tree


%% 6. Implement the insert function in a search tree

%% 7. Implement the delete function in a search tree

%% 8. Implement DFS for trees

%% 9. Implement BFS for trees

