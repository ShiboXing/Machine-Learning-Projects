#assignment, data types
library('caret') 
x <- 2
x.num <- 4
x_NANI_q <- '123'
X <- 2
print(cat(x_NANI_q, x, X))
print(x == X)
X <- 5
print(cat(typeof(x_NANI_q), class(x_NANI_q), 
          typeof(X),class(X), typeof(x == X), class(X == X)))

#vectors
x_vec <- c(1, 5, 10, 15)
x_vec_2 <- 1:4
bool_vec <- c(TRUE, FALSE, FALSE, TRUE)
print(cat(x_vec,",", x_vec_2, bool_vec))

mask = x_vec > 7
print(cat(mask, class(mask), mask[2]))
x_vec[mask]
x_vec[c(FALSE, TRUE, TRUE, FALSE)]
x_vec[x_vec != 10]
x_vec[!x_vec %in% c(1, 1000, 15, 67)] #returns all elements that aren't in this vector


a_named_vec <- c(a = 'ahuo', b = 'bhuo',c = 'chuo', z = 'zhuo')
#0 returns empty, 0 returns NA
print(cat(a_named_vec,a_named_vec[1], a_named_vec[0], a_named_vec[3], a_named_vec[1:3]))
#c() combines argument
a_named_vec[c(1,2,4)]


