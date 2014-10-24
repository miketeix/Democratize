// Generated by CoffeeScript 1.6.3
define(["backbone", "msgbus"], function(Backbone, msgBus) {
  var API;
  API = {
    getTags: function() {
      return ["Aboriginal and Northern Affairs", "Access to Information", "Agriculture", "Animal Rights", "Awareness/Commemoration", "Crime and Corrections", "Copyright Law", "Disabilities", "Drugs", "Economic Development", "Education", "Elections", "Environment", "Firearms", "Fisheries", "Health and Safety", "Housing", "Human Rights", "Immigration", "Income Tax", "Industry", "Infrastructure", "International Relations", "Labour and Unemployment", "National Defence", "Official Languages", "Pensions", "Poverty", "Privacy", "Procedure", "Public Safety", "Sales Tax", "Senate Reform", "Shipping", "Statistics", "Women's Issues", "Telecommunications", "Trade", "Transport", "Veterans' Affairs", "Finance", "Energy and Natural Resources", "The Arts", "Science and Technology"];
    },
    partyTags: function() {
      return ["Conservative Party of Canada", "Liberal Party of Canada", "New Democrat Party", "Green Party of Canada", "Bloc Quebecois"];
    },
    mpTags: function() {
      return ["Alain Giguère", "Alex Atamanenko", "Alexandre Boulerice", "Alexandrine Latendresse", "Alice Wong", "André Bellavance", "Andrew Cash", "Andrew Saxton", "Andrew Scheer", "Anne-Marie Day", "Anne Minh-Thu Quach", "Annick Papillon", "Bal Gosal", "Barry Devolin", "Ben Lobb", "Bernard Trottier", "Bernard Valcourt", "Bev Shipley", "Blaine Calkins", "Blake Richards", "Bob Dechert", "Bob Rae", "Bob Zimmer", "Brad Butt", "Brad Trost", "Brent Rathgeber", "Brian Jean", "Brian Masse", "Brian Storseth", "Bruce Hyer", "Bruce Stanton", "Bryan Hayes", "Candice Bergen", "Carol Hughes", "Carolyn Bennett", "Cathy McLeod", "Charlie Angus", "Charmaine Borg", "Cheryl Gallant", "Chris Alexander", "Chris Charlton", "Chris Warkentin", "Christian Paradis", "Christine Moore", "Chungsen Leung", "Claude Gravelle", "Claude Patry", "Colin Carrie", "Colin Mayes", "Corneliu Chisu", "Costas Menegakis", "Craig Scott", "Dan Albas", "Dan Harris", "Dany Morin", "Daryl Kramp", "Dave MacKenzie", "Dave Van Kesteren", "David Anderson", "David Christopherson", "David McGuinty", "David Sweet", "David Tilson", "David Wilks", "Dean Allison", "Dean Del Mastro", "Deepak Obhrai", "Denis Blanchette", "Denis Coderre", "Denis Lebel", "Dennis Bevington", "Devinder Shory", "Diane Ablonczy", "Diane Finley", "Djaouida Sellah", "Dominic LeBlanc", "Don Davies", "Earl Dreeshen", "Ed Fast", "Ed Holder", "Ed Komarnicki", "Élaine Michaud", "Elizabeth May", "Erin O'Toole", "Eve Adams", "Ève Péclet", "Fin Donnelly", "Francine Raynault", "Francis Scarpaleggia", "FranÌ¤ois Choquette", "FranÌ¤ois Lapointe", "FranÌ¤ois Pilon", "FranÌ¤oise Boivin", "Frank Valeriote", "Gail Shea", "Garry Breitkreuz", "Gary Goodyear", "Gary Schellenberger", "Geoff Regan", "Gerald Keddy", "Gerry Byrne", "Gerry Ritz", "Glenn Thibeault", "Gordon Brown", "Gordon O'Connor", "Greg Kerr", "Greg Rickford", "Guy Caron", "Guy Lauzon", "Harold Albrecht", "Hedy Fry", "Hélène Laverdière", "Hélène LeBlanc", "Hoang Mai", "Irene Mathyssen", "Irwin Cotler", "Isabelle Morin", "Jack Harris", "Jacques Gourde", "James Bezan", "James Lunney", "James Moore", "James Rajotte", "Jamie Nicholls", "Jasbir Sandhu", "Jason Kenney", "Jay Aspin", "Jean Crowder", "Jean-François Fortin", "Jean-François Larose", "Jean Rousseau", "Jeff Watson", "Jim Flaherty", "Jim Hillyer", "Jim Karygiannis", "Jinny Jogindera Sims", "Joan Crockatt", "Joe Comartin", "Joe Daniel", "Joe Oliver", "Joe Preston", "John Baird", "John Carmichael", "John Duncan", "John McCallum", "John McKay", "John Rafferty", "John Weston", "John Williamson", "Jonathan Genest-Jourdain", "Jonathan Tremblay", "José Nunez-Melo", "Joy Smith", "Joyce Bateman", "Joyce Murray", "Judy Foote", "Judy Sgro", "Julian Fantino", "Justin Trudeau", "Keith Ashfield", "Kellie Leitch", "Kelly Block", "Kennedy Stewart", "Kerry-Lynne D. Findlay", "Kevin Lamoureux", "Kevin Sorenson", "Kirsty Duncan", "Kyle Seeback", "Larry Miller", "Laurie Hawn", "Laurin Liu", "LaVar Payne", "Lawrence MacAulay", "Lawrence Toet", "Leon Benoit", "Leona Aglukkaq", "Libby Davies", "Linda Duncan", "Lisa Raitt", "Lise St-Denis", "Lois Brown", "Louis Plamondon", "Lynne Yelich", "Lysane Blanchette-Lamothe", "Malcolm Allen", "Manon Perreault", "Marc-André Morin", "Marc Garneau", "Maria Mourani", "Marie-Claude Morin", "Marjolaine Boutin-Sweet", "Mark Adler", "Mark Eyking", "Mark Strahl", "Mark Warawa", "Massimo Pacetti", "Mathieu Ravignat", "Matthew Dubé", "Matthew Kellway", "Maurice Vellacott", "Mauril Bélanger", "Maxime Bernier", "Megan Leslie", "Merv Tweed", "Michael Chong", "Michelle Rempel", "Mike Allen", "Mike Lake", "Mike Sullivan", "Mike Wallace", "Murray Rankin", "Mylène Freeman", "Nathan Cullen", "Niki Ashton", "Nina Grewal", "Nycole Turmel", "Olivia Chow", "Parm Gill", "Pat Martin", "Patricia Davidson", "Patrick Brown", "Paul Calandra", "Paul Dewar", "Paulina Ayala", "Peggy Nash", "Peter Braid", "Peter Goldring", "Peter Gordon MacKay", "Peter Julian", "Peter Kent", "Peter Stoffer", "Peter Van Loan", "Phil McColeman", "Philip Toone", "Pierre Dionne Labelle", "Pierre Jacob", "Pierre Lemieux", "Pierre-Luc Dusseault", "Pierre Nantel", "Pierre Poilievre", "Ralph Goodale", "Randall Garrison", "Randy Hoback", "Randy Kamp", "Rathika Sitsabaiesan", "Ray Boughen", "Raymond Côté", "Réjean Genest", "Richard M. Harris", "Rick Dykstra", "Rick Norlock", "Rob Anders", "Rob Clarke", "Rob Merrifield", "Rob Moore", "Rob Nicholson", "Robert Aubin", "Robert Chisholm", "Robert Goguen", "Robert Sopuck", "Rod Bruinooge", "Rodger Cuzner", "Rodney Weston", "Romeo Saganash", "Ron Cannan", "Rona Ambrose", "Rosane Doré Lefebvre", "Roxanne James", "Royal Galipeau", "Russ Hiebert", "Ruth Ellen Brosseau", "Ryan Cleary", "Ryan Leef", "Sadia Groguhé", "Sana Hassainia", "Scott Andrews", "Scott Armstrong", "Scott Brison", "Scott Reid", "Scott Simms", "Sean Casey", "Shelly Glover", "Stella Ambler", "Stéphane Dion", "Stephen Harper", "Stephen Woodworth", "Steven Blaney", "Steven Fletcher", "Susan Truppe", "Sylvain Chicoine", "Tarik Brahmi", "Ted Hsu", "Ted Menzies", "Ted Opitz", "Terence Young", "Thomas Mulcair", "Tilly O'Neill Gordon", "Tim Uppal", "Tom Lukiwski", "Tony Clement", "Tyrone Benskin", "Vic Toews", "Wai Young", "Wayne Easter", "Wayne Marston", "Wladyslaw Lizon", "Yvon Godin"];
    },
    ridingTags: function() {
      return ["Abbotsford", "Abitibi--Baie-James--Nunavik--Eeyou", "Abitibi--Témiscamingue", "Acadie--Bathurst", "Ahuntsic", "Ajax--Pickering", "Alfred-Pellan", "Algoma--Manitoulin--Kapuskasing", "Ancaster--Dundas--Flamborough--Westdale", "Argenteuil--Papineau--Mirabel", "Avalon", "Barrie", "Bas-Richelieu--Nicolet--Bécancour", "Battlefords--Lloydminster", "Beaches--East York", "Beauce", "Beauharnois--Salaberry", "Beauport--Limoilou", "Beauséjour", "Berthier--Maskinongé", "Blackstrap", "Bonavista--Gander--Grand Falls--Windsor", "Bourassa", "Bramalea--Gore--Malton", "Brampton--Springdale", "Brampton West", "Brandon--Souris", "Brant", "British Columbia Southern Interior", "Brome--Missisquoi", "Brossard--La Prairie", "Bruce--Grey--Owen Sound", "Burlington", "Burnaby--Douglas", "Burnaby--New Westminster", "Calgary--Nose Hill", "Calgary Centre", "Calgary Centre-North", "Calgary East", "Calgary Northeast", "Calgary Southeast", "Calgary Southwest", "Calgary West", "Cambridge", "Cape Breton--Canso", "Cardigan", "Cariboo--Prince George", "Carleton--Mississippi Mills", "Central Nova", "Chambly--Borduas", "Charlesbourg--Haute-Saint-Charles", "Charleswood--St. James--Assiniboia", "Charlottetown", "Châteauguay--Saint-Constant", "Chatham-Kent--Essex", "Chicoutimi--Le Fjord", "Chilliwack--Fraser Canyon", "Churchill", "Compton--Stanstead", "Crowfoot", "Cumberland--Colchester--Musquodoboit Valley", "Cypress Hills--Grasslands", "Dartmouth--Cole Harbour", "Dauphin--Swan River--Marquette", "Davenport", "Delta--Richmond East", "Desnethé--Missinippi--Churchill River", "Don Valley East", "Don Valley West", "Drummond", "Dufferin--Caledon", "Durham", "Edmonton--Leduc", "Edmonton--Mill Woods--Beaumont", "Edmonton--Sherwood Park", "Edmonton--Spruce Grove", "Edmonton--St. Albert", "Edmonton--Strathcona", "Edmonton Centre", "Edmonton East", "Eglinton--Lawrence", "Egmont", "Elgin--Middlesex--London", "Elmwood--Transcona", "Esquimalt--Juan de Fuca", "Essex", "Etobicoke--Lakeshore", "Etobicoke Centre", "Etobicoke North", "Fleetwood--Port Kells", "Fort McMurray--Athabasca", "Fredericton", "Fundy Royal", "Gaspésie--Îles-de-la-Madeleine", "Gatineau", "Glengarry--Prescott--Russell", "Guelph", "Haldimand--Norfolk", "Halifax", "Halifax West", "Halton", "Hamilton Centre", "Hamilton East--Stoney Creek", "Hamilton Mountain", "Haute-Gaspésie--La Mitis--Matane--Matapédia", "Hochelaga", "Honoré-Mercier", "Hull--Aylmer", "Humber--St. Barbe--Baie Verte", "Huron--Bruce", "Jeanne-Le Ber", "Joliette", "Jonquière--Alma", "Kamloops--Thompson--Cariboo", "Kelowna--Lake Country", "Kenora", "Kildonan--St. Paul", "Kings--Hants", "Kingston and the Islands", "Kitchener--Conestoga", "Kitchener--Waterloo", "Kitchener Centre", "Kootenay--Columbia", "La Pointe-de-l'Île", "Labrador", "Lac-Saint-Louis", "Lambton--Kent--Middlesex", "Lanark--Frontenac--Lennox and Addington", "Langley", "LaSalle--Émard", "Laurentides--Labelle", "Laurier--Sainte-Marie", "Laval", "Laval--Les Îles", "Leeds--Grenville", "Lethbridge", "Lévis--Bellechasse", "London--Fanshawe", "London North Centre", "London West", "Longueuil--Pierre-Boucher", "Lotbinière--Chutes-de-la-Chaudière", "Louis-Hébert", "Louis-Saint-Laurent", "Macleod", "Madawaska--Restigouche", "Manicouagan", "Marc-Aurèle-Fortin", "Markham--Unionville", "Medicine Hat", "Mégantic--L'Érable", "Miramichi", "Mississauga--Brampton South", "Mississauga--Streetsville", "Mississauga South", "Moncton--Riverview--Dieppe", "Montcalm", "Montmagny--L'Islet--Kamouraska--Rivière-du-Loup", "Montmorency--Charlevoix--Haute-Côte-Nord", "Mount Royal", "Nanaimo--Alberni", "Nanaimo--Cowichan", "Nepean--Carleton", "New Brunswick Southwest", "New Westminster--Coquitlam", "Newmarket--Aurora", "Newton--North Delta", "Niagara Falls", "Niagara West--Glanbrook", "Nickel Belt", "Nipissing--Timiskaming", "North Vancouver", "Northumberland--Quinte West", "Notre-Dame-de-Grâce--Lachine", "Oak Ridges--Markham", "Oakville", "Okanagan--Coquihalla", "Okanagan--Shuswap", "Oshawa", "Ottawa--Orléans", "Ottawa--Vanier", "Ottawa Centre", "Ottawa South", "Ottawa West--Nepean", "Outremont", "Oxford", "Palliser", "Papineau", "Parkdale--High Park", "Parry Sound--Muskoka", "Peace River", "Perth--Wellington", "Peterborough", "Pickering--Scarborough East", "Pierrefonds--Dollard", "Pitt Meadows--Maple Ridge--Mission", "Pontiac", "Port Moody--Westwood--Port Coquitlam", "Portage--Lisgar", "Portneuf--Jacques-Cartier", "Prince Albert", "Prince Edward--Hastings", "Prince George--Peace River", "Provencher", "Québec", "Random--Burin--St. George's", "Red Deer", "Regina--Lumsden--Lake Centre", "Regina--Qu'Appelle", "Renfrew--Nipissing--Pembroke", "Repentigny", "Richmond", "Richmond--Arthabaska", "Richmond Hill", "Rimouski-Neigette--Témiscouata--Les Basques", "Rivière-des-Mille-Îles", "Rivière-du-Nord", "Roberval--Lac-Saint-Jean", "Rosemont--La Petite-Patrie", "Saanich--Gulf Islands", "Sackville--Eastern Shore", "Saint Boniface", "Saint-Bruno--Saint-Hubert", "Saint-Hyacinthe--Bagot", "Saint-Jean", "Saint John", "Saint-Lambert", "Saint-Laurent--Cartierville", "Saint-Léonard--Saint-Michel", "Saint-Maurice--Champlain", "Sarnia--Lambton", "Saskatoon--Humboldt", "Saskatoon--Rosetown--Biggar", "Saskatoon--Wanuskewin", "Sault Ste. Marie", "Scarborough--Agincourt", "Scarborough--Guildwood", "Scarborough--Rouge River", "Scarborough Centre", "Scarborough Southwest", "Selkirk--Interlake", "Shefford", "Sherbrooke", "Simcoe--Grey", "Simcoe North", "Skeena--Bulkley Valley", "Souris--Moose Mountain", "South Shore--St. Margaret's", "South Surrey--White Rock--Cloverdale", "St. Catharines", "St. John's East", "St. John's South--Mount Pearl", "St. Paul's", "Stormont--Dundas--South Glengarry", "Sudbury", "Surrey North", "Sydney--Victoria", "Terrebonne--Blainville", "Thornhill", "Thunder Bay--Rainy River", "Thunder Bay--Superior North", "Timmins--James Bay", "Tobique--Mactaquac", "Toronto--Danforth", "Toronto Centre", "Trinity--Spadina", "Trois-Rivières", "Vancouver Centre", "Vancouver East", "Vancouver Island North", "Vancouver Kingsway", "Vancouver Quadra", "Vancouver South", "Vaudreuil-Soulanges", "Vaughan", "Vegreville--Wainwright", "Verchères--Les Patriotes", "Victoria", "Wascana", "Welland", "Wellington--Halton Hills", "West Nova", "West Vancouver--Sunshine Coast--Sea to Sky Country", "Westlock--St. Paul", "Westmount--Ville-Marie", "Wetaskiwin", "Whitby--Oshawa", "Wild Rose", "Willowdale", "Windsor--Tecumseh", "Windsor West", "Winnipeg Centre", "Winnipeg North", "Winnipeg South", "Winnipeg South Centre", "Yellowhead", "York--Simcoe", "York Centre", "York South--Weston", "York West", "Yorkton--Melville", "Yukon"];
    }
  };
  msgBus.reqres.setHandler("subjectTag:entities", function() {
    return API.getTags();
  });
  msgBus.reqres.setHandler("partyTag:entities", function() {
    return API.partyTags();
  });
  msgBus.reqres.setHandler("mpTag:entities", function() {
    return API.mpTags();
  });
  return msgBus.reqres.setHandler("ridingTag:entities", function() {
    return API.ridingTags();
  });
});
