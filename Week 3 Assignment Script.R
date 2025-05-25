> data(iris)
> hist(iris$Sepal.Width)
> mean(iris$Sepal.Width)
[1] 3.057333
> median(iris$Sepal.Width)
[1] 3
> head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
> quantile(iris$Sepal.Width, probs = 0.73)
73% 
3.3 
> pairs(iris[ , 1:4]
+ )
> data(PlantGrowth)
> head(PlantGrowth)
  weight group
1   4.17  ctrl
2   5.58  ctrl
3   5.18  ctrl
4   6.11  ctrl
5   4.50  ctrl
6   4.61  ctrl
> hist(PlantGrowth$weight,
+      breaks = seq(3.3, max(PlantGrowth$weight) + 0.3, by = 0.3))
> boxplot(weight ~ group,
+ data = PlantGrowth)
> min_trt2 = min(PlantGrowth$weight[PlantGrowth$group == "trt2"])
> trt1_weights = PlantGrowth$weight[PlantGrowth$group == "trt1"]
> exact_percent = sum(trt1_weights < min_trt2) / length(trt1_weights) * 100
> exact_percent
[1] 80
> subset_data = subset(PlantGrowth, weight > 5.5)
> barplot(table(subset_data$group),
+         main = "Groups with Weight > 5.5",
+         col = heat.colors(length(unique(subset_data$group))),
+         ylab = "Count")

