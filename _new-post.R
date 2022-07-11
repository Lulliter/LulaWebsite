# CREATE NEW POST STRUCTURE

distill::create_post(title = "nerderland",
							collection = "posts",
							author = "Luisa M. Mimmi",
							slug = "auto",
							date = Sys.Date(),
							draft = FALSE)
# knit or
rmarkdown::render("_posts/2009-02-21-sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina/sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina.Rmd")

distill::rename_post_dir(post_dir = "_posts/2009-02-21-sussidiariet-e-sviluppo-lelettricit-nelle-favelas-dellamerica-latina/", slug = "2009-02-21-sussidiar")


distill::create_post(title = "Github Pages & AWS",
							collection = "posts",
							author ="Luisa M. Mimmi",
							slug = "GithubPages-AWS",
							date =  Sys.Date(),
							draft = FALSE,
							#categories = "tools"
)

distill::create_post(
	title = "Nerdy stuff", # mandatory
	author = "auto",
	slug = "auto", # generates a website slug (URL)
	date_prefix = TRUE, # adds date for sorting
	draft = FALSE,
	edit = interactive()
)
