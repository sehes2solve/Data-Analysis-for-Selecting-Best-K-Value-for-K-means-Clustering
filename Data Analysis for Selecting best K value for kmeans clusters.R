Data <- USArrests

within_sum_squares <- numeric(15)

for(i in 1:15)  #no.of random intializtions to select best from to start kmeans
  within_sum_squares[i] <- sum(kmeans(Data,i,nstart=30)$withins)

print(within_sum_squares)

plot(1:15, within_sum_squares, type="b", xlab="Number of Clusters", ylab="WSS") 

#the key on choosing the optimal k clusters is choosing the k that at the sweetest
#spot between the k value at which model starts overfitting when it's wss smaller 
#than enough & the max k value at which the model is underfit & a key indicator
#for that is the k that results wss at the elbow point of wss graph which is 3

