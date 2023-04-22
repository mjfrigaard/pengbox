# penguins

This is an example project using the `box` R package. Read more about how to use `box` on the [package website](https://klmr.me/box/index.html) or in [my blog post.](https://mjfrigaard.github.io/posts/box/) 

## `box/`

``` bash
├── box
│     └── graph
│         ├── wrangle
│         │     ├── clean
│         │     │     ├── import
│         │     │     │     └── raw.R
│         │     │     └── cols.R
│         │     └── vars.R
│         └── scatter.R
├── README.md
├── penguins.Rproj
└── run.R

6 directories, 7 files
```

## `run.R`

The `run.R` file includes the following: 

``` r
# import
box::use(box/graph/wrangle/clean/import/raw)
str(raw$csv(), give.attr = FALSE)
```

``` r
# clean columns
box::use(box/graph/wrangle/clean/cols)
names(cols$snakes())
```

``` r
# wrangle variables
box::use(box/graph/wrangle/vars)
str(vars$scatter())
```

``` r
# graph
box::use(box/graph/scatter)
scatter$ggp2()
```