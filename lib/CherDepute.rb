require 'rubygems'
require 'nokogiri' 
require 'open-uri'


def get_one_depute_name

	one_depute_name_array = []
	one_depute_name = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&lang=fr"))
	






#########################  C O D E  N O N  F O N C T I O N N E L ################################





# 	city_url.xpath('//tr[2]/td[1]/table[1]').each do |node|
	
# 	city_url_array << node['href']
	
# 	end
	
# 	array_full_url=[]
# 	array_full_url=city_url_array.map{|i| "http://annuaire-des-mairies.com#{i.sub(".","")}"}
	
# 	return array_full_url
# 	# print city_url_array 
	
# end




# def get_one_city_name_one_city_mail(url)

# 	vaureal_url = Nokogiri::HTML(open(url))
# 	vaureal_email_array = []
# 	return hash ={ vaureal_url.xpath('/html[1]/body[1]/div[1]/main[1]/section[2]/div[1]/table[1]/tbody[1]/tr[4]/td[2]').text => vaureal_url.xpath('/html[1]/body[1]/div[1]/main[1]/section[1]/div[1]/div[1]/div[1]/p[1]/strong[1]/a[1]').text}
	
# end




# def perform
# name_and_email_of_the_cities = get_city_url.map{|n| get_one_city_name_one_city_mail(n)}

# puts name_and_email_of_the_cities

# end

# perform



2.4. Cher député


1) récupérer les nom et prénoms dans un array
sur les 6 emplacements des 58 pages
2) récupérer email
sur les 6 emplacements des 58 pages


les 58 pages :

https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&lang=fr
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=10&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=20&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=30&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=40&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=50&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=60&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=70&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=80&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=90&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=100&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=110&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=120&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=130&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=140&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=150&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=160&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=170&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=180&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=190&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=200&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=210&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=220&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=230&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=240&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=250&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=260&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=270&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=280&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=290&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=300&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=310&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=320&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=330&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=340&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=350&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=360&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=370&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=380&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=390&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=400&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=410&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=420&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=430&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=440&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=450&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=460&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=470&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=480&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=490&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=500&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=510&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=520&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=530&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=540&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=550&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=560&lang=fr#pagination_deputes
https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=570&lang=fr#pagination_deputes




les 6 places  des prénoms + noms :
/html[1]/body[1]/div[1]/main[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/h2[1]
/html[1]/body[1]/div[1]/main[1]/div[1]/div[1]/div[1]/ul[2]/li[1]/h2[1]
/html[1]/body[1]/div[1]/main[1]/div[1]/div[1]/div[1]/ul[3]/li[1]/h2[1]
/html[1]/body[1]/div[1]/main[1]/div[1]/div[1]/div[1]/ul[4]/li[1]/h2[1]
/html[1]/body[1]/div[1]/main[1]/div[1]/div[1]/div[1]/ul[5]/li[1]/h2[1]
/html[1]/body[1]/div[1]/main[1]/div[1]/div[1]/div[1]/ul[6]/li[1]/h2[1]






# 4) réunir les array dans un hash


# = stocke les informations extraites dans une array de hashs selon ce format 
# (un peu différent des exercices précédents) :

# a = [
#   { 
#     "first_name" => "Jean",
#     "last_name" => "Durant",
#     "email" => "jean.durant@assemblée.fr"
#   },
#   { 
#     "first_name" => "Martin",
#     "last_name" => "Dupont",
#     "email" => "martin.dupont@assemblée.fr"
#   },
#   etc
# ]



# Deux tests suffiront.