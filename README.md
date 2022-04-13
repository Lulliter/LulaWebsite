# LulaWebsite


## What this is 
New website created with `distill`

## How to generate local version
1. From the Build pane, clicking on `Build Website` hammer icon
2. Type `rmarkdown::render_site()` into the R console.

## Structure 

+ The file `./index.Rmd` = the main landing page of your website | fill it with the content you want on your main page.
+ The file `./_site.yml` = (called a YAML file) contains the main settings for your site that control the overall look.  
+ The `./docs/*` folder =  created and updated when you build the website. It contains the html files that are created from your Rmd files. Those files will be used by Github to display your website 
+ more content.... all you need to do is edit existing or create new R Markdown (`.Rmd`) files (or,)if you don’t use R code in your file, you could just use plain Markdown/md files)

# Acknowledgements
This great [tutorial](https://www.andreashandel.com/posts/distill-github-website/)
This impressive [example](https://qntkhvn.netlify.app/)
Too sophisticated: [maybe later](https://github.com/joelnitta/joelnitta-home) or [after](https://github.com/jhelvy/jhelvy_distill)
