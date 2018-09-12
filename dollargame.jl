# Dollar Game (See numberphile vid)

# Adjacency matrix
ADJ = [0 1 0 0 0 ; 1 0 1 1 0 ; 0 1 0 0 1 ; 0 1 0 0 1 ; 0 0 1 1 0] ;

# Weights vector
W = [3 4 -2 1 -3] ;
println(W)

# Edges, vertices, genus, total money
Nedg = sum(sum(ADJ)) ; 
Nver = length(ADJ) ; 
Gen = Nedg - Nver + 1 ; 
Totmon = sum(W) ;

# Input as in Matlab
function input(prompt::String="")::String
        print(prompt)
        return chomp(readline())
end

# Playing condition 
if Totmon < Gen 
    println("Not enough money !") ;
else
    println("Start !")
end

##### REAL GAME BEGGINING #####
Nok = 0 ;
while Nok < length(W)
Nok = 0 ;
    DonatorS = input("Which one donates ?")
    Donator = parse(Int64,DonatorS) ;
    
    for ii in 1:1:length(W)
        if ADJ[Donator, ii] == 1
            W[ii] = W[ii]+1 ;
            W[Donator] = W[Donator]-1 ;
        end
    end    
    println(W)
    
    # Test NOK
        for ii in 1:length(W)
            if W[ii] >= 0 
                Nok = Nok + 1
            end
        end
end
    
println("Success !!")
        
            

