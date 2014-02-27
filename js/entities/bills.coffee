# static header entities
define ["backbone","msgbus"], (Backbone, msgBus) ->

	
	API = 
		getBills: ->
			new Backbone.Collection(
				[{
                "pscn": "41-1/C-31",
                "parl": "41",
                "sess": "1",
                "chamber": "C",
                "number": "31",
                "introduced": "2012-02-16 10:09:25",
                "updated": "2013-04-13 19:09:47",
                "type": "42f",
                "status": "3b0",
                "short_title_en": "Protecting Canada's Immigration System Act",
                "short_title_fr": "Loi visant à protéger le système d'immigration du Canada",
                "title_en": "An Act to amend the Immigration and Refugee Protection Act, the Balanced Refugee Reform Act, the Marine Transportation Security Act and the Department of Citizenship and Immigration Act Loi modifiant la Loi sur l'immigration et la protection des réfugiés,",
                "title_fr": "Loi modifiant la Loi sur l'immigration et la protection des réfugiés, la Loi sur des mesures de réforme équitables concernant les réfugiés, la Loi sur la sûreté du transport maritime et la Loi sur le ministère de la Citoyenneté et de l'Immigration",
                "mp_alias": "jason-kenney",
                "sponsor": "Jason Kenney",
                "riding": "Calgary Southeast",
                "province": "ab",
                "party": "cpc",
                "votes_yes": "1",
                "votes_no": "10",
                "n_comments": "0",
                "tags": [
                    {
                        "en": "Immigration",
                        "fr": "Immigration"
                    }
                ]
                
            },
            {
                "pscn": "41-1/C-31",
                "parl": "41",
                "sess": "1",
                "chamber": "C",
                "number": "31",
                "introduced": "2012-02-16 10:09:25",
                "updated": "2013-04-13 19:09:47",
                "type": "42f",
                "status": "3b0",
                "short_title_en": "Protecting Canada's Immigration System Act",
                "short_title_fr": "Loi visant à protéger le système d'immigration du Canada",
                "title_en": "An Act to amend the Immigration and Refugee Protection Act, the Balanced Refugee Reform Act, the Marine Transportation Security Act and the Department of Citizenship and Immigration Act",
                "title_fr": "Loi modifiant la Loi sur l'immigration et la protection des réfugiés, la Loi sur des mesures de réforme équitables concernant les réfugiés, la Loi sur la sûreté du transport maritime et la Loi sur le ministère de la Citoyenneté et de l'Immigration",
                "mp_alias": "jason-kenney",
                "sponsor": "Jason Kenney",
                "riding": "Calgary Southeast",
                "province": "ab",
                "party": "pq",
                "votes_yes": "1",
                "votes_no": "10",
                "n_comments": "0",
                "tags": [
                    {
                        "en": "Immigration",
                        "fr": "Immigration"
                    }
                ]
                
            },
            {
                "pscn": "41-1/C-31",
                "parl": "41",
                "sess": "1",
                "chamber": "C",
                "number": "31",
                "introduced": "2012-02-16 10:09:25",
                "updated": "2013-04-13 19:09:47",
                "type": "42f",
                "status": "3b0",
                "short_title_en": "Protecting Canada's Immigration System Act",
                "short_title_fr": "Loi visant à protéger le système d'immigration du Canada",
                "title_en": "An Act to amend the Immigration and Refugee Protection Act, the Balanced Refugee Reform Act, the Marine Transportation Security Act and the Department of Citizenship and Immigration Act",
                "title_fr": "Loi modifiant la Loi sur l'immigration et la protection des réfugiés, la Loi sur des mesures de réforme équitables concernant les réfugiés, la Loi sur la sûreté du transport maritime et la Loi sur le ministère de la Citoyenneté et de l'Immigration",
                "mp_alias": "jason-kenney",
                "sponsor": "Jason Kenney",
                "riding": "Calgary Southeast",
                "province": "ab",
                "party": "gpc",
                "votes_yes": "1",
                "votes_no": "10",
                "n_comments": "0",
                "tags": [
                    {
                        "en": "Immigration",
                        "fr": "Immigration"
                    }
                ]
                
            },
            {
                "pscn": "41-1/C-31",
                "parl": "41",
                "sess": "1",
                "chamber": "C",
                "number": "31",
                "introduced": "2012-02-16 10:09:25",
                "updated": "2013-04-13 19:09:47",
                "type": "42f",
                "status": "3b0",
                "short_title_en": "Protecting Canada's Immigration System Act",
                "short_title_fr": "Loi visant à protéger le système d'immigration du Canada",
                "title_en": "An Act to amend the Immigration and Refugee Protection Act, the Balanced Refugee Reform Act, the Marine Transportation Security Act and the Department of Citizenship and Immigration Act",
                "title_fr": "Loi modifiant la Loi sur l'immigration et la protection des réfugiés, la Loi sur des mesures de réforme équitables concernant les réfugiés, la Loi sur la sûreté du transport maritime et la Loi sur le ministère de la Citoyenneté et de l'Immigration",
                "mp_alias": "jason-kenney",
                "sponsor": "Jason Kenney",
                "riding": "Calgary Southeast",
                "province": "ab",
                "party": "lpc",
                "votes_yes": "1",
                "votes_no": "10",
                "n_comments": "0",
                "tags": [
                    {
                        "en": "Immigration",
                        "fr": "Immigration"
                    }
                ]
                
            },
            # {
            #     "pscn": "41-1/C-31",
            #     "parl": "41",
            #     "sess": "1",
            #     "chamber": "C",
            #     "number": "31",
            #     "introduced": "2012-02-16 10:09:25",
            #     "updated": "2013-04-13 19:09:47",
            #     "type": "42f",
            #     "status": "3b0",
            #     "short_title_en": "Protecting Canada's Immigration System Act",
            #     "short_title_fr": "Loi visant à protéger le système d'immigration du Canada",
            #     "title_en": "An Act to amend the Immigration and Refugee Protection Act, the Balanced Refugee Reform Act, the Marine Transportation Security Act and the Department of Citizenship and Immigration Act",
            #     "title_fr": "Loi modifiant la Loi sur l'immigration et la protection des réfugiés, la Loi sur des mesures de réforme équitables concernant les réfugiés, la Loi sur la sûreté du transport maritime et la Loi sur le ministère de la Citoyenneté et de l'Immigration",
            #     "mp_alias": "jason-kenney",
            #     "sponsor": "Jason Kenney",
            #     "riding": "Calgary Southeast",
            #     "province": "ab",
            #     "party": "cpc",
            #     "votes_yes": "1",
            #     "votes_no": "10",
            #     "n_comments": "0",
            #     "tags": [
            #         {
            #             "en": "Immigration",
            #             "fr": "Immigration"
            #         }
            #     ]
                
            # },
            {
                "pscn": "41-1/C-31",
                "parl": "41",
                "sess": "1",
                "chamber": "C",
                "number": "31",
                "introduced": "2012-02-16 10:09:25",
                "updated": "2013-04-13 19:09:47",
                "type": "42f",
                "status": "3b0",
                "short_title_en": "Protecting Canada's Immigration System Act",
                "short_title_fr": "Loi visant à protéger le système d'immigration du Canada",
                "title_en": "An Act to amend the Immigration and Refugee Protection Act, the Balanced Refugee Reform Act, the Marine Transportation Security Act and the Department of Citizenship and Immigration Act",
                "title_fr": "Loi modifiant la Loi sur l'immigration et la protection des réfugiés, la Loi sur des mesures de réforme équitables concernant les réfugiés, la Loi sur la sûreté du transport maritime et la Loi sur le ministère de la Citoyenneté et de l'Immigration",
                "mp_alias": "jason-kenney",
                "sponsor": "Jason Kenney",
                "riding": "Calgary Southeast",
                "province": "ab",
                "party": "ndp",
                "votes_yes": "1",
                "votes_no": "10",
                "n_comments": "0",
                "tags": [
                    {
                        "en": "Immigration",
                        "fr": "Immigration"
                    }
                ]
                
            }]
				)

			# [
			# 	(name: "HOME", url: "#", title: "", cssClass: "" )
   #              (name: "ABOUT", url: "#", title: "", cssClass: "")
   #              (name: "BILLS", url: "#", title: "", cssClass: "")
   #              (name: "DEMOCRATIZE", url: "#", title: "Democratize", cssClass: "", id:"logo" )
   #              (name: "MP's", url: "#", title: "", cssClass: "")
   #              (name: "BLOG", url: "#", title: "", cssClass: "")
   #              (name: "FRANÇAIS", url: "#", title: "", cssClass: "")
			# ]

	msgBus.reqres.setHandler "bill:entities", ->
		API.getBills()
