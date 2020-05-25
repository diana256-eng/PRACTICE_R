str(state.x77)
all.states <- as.data.frame(state.x77)
str(all.states)
all.states$Name <- rownames(state.x77)
rownames(all.states) <- NULL
str(all.states)
cold.states <- all.states[all.states$Frost > 150 ,c("Name","Frost")]
cold.states
large.states <- all.states[all.states$Area > 100000, c("Name","Area")]
large.states
merge(cold.states,large.states)
merge(cold.states, large.states,all = TRUE) #merging data
merge(cold.states, large.states, all.x = TRUE)
merge(cold.states, large.states, all.y = TRUE)
index <- match(large.states$Name ,cold.states$Name) #matching data
index
large.states[na.omit(index), ]
index <- cold.states$Name %in% large.states$Name
index
!is.na(match(cold.states$Name, large.states$Name)) #exclamation mark exludes values from a variable
cold.states[index, ]
?"%in%" # This can also be used to match data from 2 datasets
some.states <- data.frame(
  Region = state.region,
  state.x77)
some.states <- some.states[1:10, 1:3] # creating a data subset, by extracting colums and rows from an existing data frame
some.states
sort(some.states$Population)
sort(some.states$Population, decreasing = TRUE) #sorting in ascending order
order.pop <- order(some.states$Population)
order.pop
some.states$Population[order.pop, ]
some.states[order.pop, ]
order(some.states$Population)
order(some.states$Population, decreasing = TRUE) #sorting the variable population in descending order
some.states[order(some.states$Population, decreasing = TRUE), ]
order(some.states$Population)
order(some.states$Region)
index <- with(some.states, order(Region, Population))
index
some.states[index, ]
index  <- order(xtfrm(some.states$Region),
                some.states$Population)
some.states[index, ]