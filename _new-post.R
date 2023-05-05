# CREATE NEW POST STRUCTURE
library(distill)

distill::create_post(title = "1st attempt at tidyeval",
							collection = "posts",
							author ="Luisa M. Mimmi",
							slug = "tidyeval",
							date =  Sys.Date(),
							draft = TRUE,
							#categories = "tools"
)


distill::create_post(title = "R notes: cluster analysis",
							collection = "posts",
							author = "Luisa M. Mimmi",
							slug = "auto",
							date = Sys.Date(),
							draft = FALSE)
# knit or
rmarkdown::render("_posts/2009-02-21-sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina/sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina.Rmd")

distill::rename_post_dir(post_dir = "_posts/2009-02-21-sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina/", slug = "2009-02-21-sussidiar")



distill::create_post(
	title = "Nerdy stuff", # mandatory
	author = "auto",
	slug = "auto", # generates a website slug (URL)
	date_prefix = TRUE, # adds date for sorting
	draft = FALSE,
	edit = interactive()
)

distill::create_post(
	title = "Exploring ERDF 2014-2020 funds in Italy", # mandatory
	author = "auto",
	date = as.Date("2022-11-07"),
	slug = "ERDF-spending-viz", # generates a website slug (URL)
	date_prefix = TRUE, # adds date for sorting
	draft = FALSE,
	edit = interactive()
)


distill::create_post(
	title = "PNRR", # mandatory
	author = "auto",
	date = as.Date("2022-11-07"),
	slug = "PNRR", # generates a website slug (URL)
	date_prefix = TRUE, # adds date for sorting
	draft = FALSE,
	edit = interactive()
)

# # importing a post from another repo (RPUBS)
# distill::import_post("https://github.com/Lulliter/plan2implem",
# 							#	collection = "posts",
# 							date = as.Date("2022-11-07"),
# 							slug = "ERDF-spending-viz")
#
