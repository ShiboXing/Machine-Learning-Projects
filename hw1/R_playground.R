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
a_named_vec[c(1,2,3)]
err_vec = c(1, 2, 'err')
print(cat(err_vec, ',', typeof(err_vec)))

#lists
my_lists <- list(var1 = 1:2, var2 = c('test', 'test2'),
                 var3 = seq(-1, 1, length.out = 5),
                 var4 = c('hello', 'goodbye'))
print(my_lists)
print(cat(my_lists$var2,length(my_lists),my_lists[[2]], my_lists[['var4']],
          str(my_lists)))


#dataframe:
my_df <- data.frame(x_1 = 1:4,
                    x_2 = c("yes", "no", "hello", "maybe"),
                    x_3 = seq(-1, 1, length.out = 4),
                    x_4 = c(TRUE, TRUE, FALSE, TRUE))
my_df
str(my_df)
class(my_df$x_1)
my_df[2,1] #the second row first column
my_df[c(1, 3, 4), 3]
my_df[, c(1,4)]
my_df[, c('x_1', 'x_3')]

#iris dataset
iris
iris[1:11, 'Sepal.Length']

iris[iris$Species == 'setosa', ]
iris[iris$Sepal.Length > 5.8, ]

#packages
library(dplyr)
library(ggplot2)

#pipe in package magrittr
names(iris)
iris %>% names()
length(names(iris))
iris %>% names() %>% length()
length(names(iris))

x <- rnorm(100)
x %<>% abs %>% sort #call abs on x and write back to x

#tibble
my_df
my_df %>% tbl_df %>% glimpse #glimpse is tidyverse's alternative to str()
my_df %>% tbl_df %>% select(c(1, 3))
c('pitt', 'and ', 'psu') %>% str
my_df %>% tbl_df %>% slice(c(1, 2, 4)) %>% filter(x_3 > 0)
my_df[2,4] <- FALSE
my_df
my_df %>% tbl_df %>% filter(x_3 < 0 & x_4 == FALSE)

#ggplot
  iris %>% ggplot(mapping = aes(x = Sepal.Length)) +
  geom_freqpoly(bins = 20, mapping = aes(color = Sepal.Width > median(Sepal.Width))) +
  facet_wrap(~Species) + 
  theme(legend.position = "top")

iris %>% summary()








