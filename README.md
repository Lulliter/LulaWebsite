# LulaWebsite


## What this is
My new personal website created with R pckg [`distill`](https://www.rstudio.com/blog/distill/) 

## Where it lives
+ **Local Repo** - in /Users/luisamimmi/Github/LulaWebsite
+ **Github Repo** - at [github](https://github.com/Lulliter/LulaWebsite)
+ Deployed via **Github Pages website** - at [https://github.com/Lulliter/LulaWebsite](https://lulliter.github.io/LulaWebsite/)
+ ...re-directed to **custom domain** registered with AWS Route 53 - at [lulliter.com](https:www.lulliter.com)
		+ How to configure AWS **Route 53** to use your custom vanity domain (see instructions [here](https://medium.com/@benwiz/how-to-deploy-github-pages-with-aws-route-53-registered-custom-domain-and-force-https-bbea801e5ea3))
		+ Set up AWS **Cloudfront Distributions** to link github.io/xxx to custom vanity domain (see instructions [here](https://medium.com/@bschandu67/host-your-website-using-github-pages-aws-route53-and-aws-cloudfront-7345493d2ea6))
		+ (*) QUIRK: I had  to add `CNAME` otherwise in every push, the domain gets cancelled .... 

## Structure
+ The file `./index.Rmd` == the main landing page of your website | fill it with the content you want on your main page.
+ The file `./_site.yml` == (called a YAML file) contains the main settings for your site that control the overall look.
	+ this include what files are included and excluded from the site
+ The `./docs/*` (or `_site/*`) folder ==  created and updated when you build the website. It contains the html files that are created from your Rmd files. Those files will be used by Github to display your website 
+ more content.... all you need to do is edit existing or create new R Markdown (`.Rmd`) files (or,)if you don’t use R code in your file, you could just use plain Markdown/md files)

## How to generate local version
1. From the Build pane, clicking on `Build Website` hammer icon
2. Type `rmarkdown::render_site(encoding = 'UTF-8')` into the R console. This will: 
	 + Render all .Rmd and ,md files in the root dir into HTML (**EXCEPT** markdown files beginning with “_” ) 
	 + Regenerate Blog posts  
	 + copy the generated HTML files in the output dir (`_site/*` or `docs/*`) along with supporting files (e.g. CSS and JavaScript)

## How to add a blog post
1. create it
`distill::create_post(title = "prova",`
`collection = "posts",`
`author = "auto",`
`slug = "auto",`
`date = Sys.Date(),`
`draft = TRUE)`
2. knit it or run `rmarkdown::render("_posts/2022-04-13-prova/prova.Rmd")`
(_posts are considered standalone documents that are not re-rendered when the site is built_)
3. build site 


## Publication page

+ I _imitate_ the smart model of [Joel Nitta](https://www.joelnitta.com/publications.html). To make it work, I had to figure out a few tweaks:
	+ Some type of my bib entries from Zotero were not being exported, but you can add in Zotero an "extra" field. see instructions [here](https://retorque.re/zotero-better-bibtex/exporting/extra-fields/).
		1.  Adding in in Extra `tex.referencetype: proceedings` --> makes the bibtex key become `@proceedings{g20-italy_g20_2021, ...`
		2. Adding in in Extra `tex.type: conference Proceedings` --> makes the bibtex key become `@proc ..., type = {conferenceProceedings},....`
	+ In the functions I had to replace `if (is.na (url)) return(NULL)` (error when knit ) with ->  `if (anyNA(url)) return(NULL)`  	
	+ adding `./header.html` allows to use the [Academicons icons](https://jpswalsh.github.io/academicons/) (only fontawesome ones are inthe distill website by default)

# Acknowledgements
This is possible thanks to the fantastic R package `distill`.
I started from this [tutorial](https://www.andreashandel.com/posts/distill-github-website/) -Here's another [nice tutorial](https://themockup.blog/posts/2020-08-01-building-a-blog-with-distill/#step-7-add-to-git). Then I 'borrowed' the solution of [Quang Nguyen](https://qntkhvn.netlify.app/) to design the Project page and from [Joel Nitta's website](https://github.com/joelnitta/joelnitta-home) for the theme and publication page. Here's another [nice example](https://github.com/jhelvy/jhelvy_distill) possibly for later (plus [tutorial blog](https://www.jhelvy.com/posts/2021-03-25-customizing-distill-with-htmltools-and-css/)).

<!-- Nice boxes in my posts copied from [Desirée De Leon](https://desiree.rbind.io/post/2019/making-tip-boxes-with-bookdown-and-rmarkdown/) --> 
