class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
        "/$url?"(controller: 'article',action: 'view')
		"500"(view:'/error')
	}
}
