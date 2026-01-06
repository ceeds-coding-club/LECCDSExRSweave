data(iris)

iris_df <- iris

write.csv(x = iris_df, file = file.path(".", "data", "iris.csv"), row.names = FALSE)
