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
