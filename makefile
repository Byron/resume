index = index.html
template = templates/index.html.liquid
partials = templates/partials/project.html.liquid templates/partials/entry.html.liquid

$(index): $(template) shared.yml model.yml $(partials)
	syp shared.yml model.yml | sy substitute --partial=templates/partials/project.html.liquid --partial=templates/partials/entry.html.liquid $<:$@
