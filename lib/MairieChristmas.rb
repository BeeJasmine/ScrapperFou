require 'rubygems'
require 'nokogiri' 
require 'open-uri'

# Décomposons le programme en 2 sous-problème simples:

#  Tu dois être capable d'obtenir un e-mail de mairie à partir de la page de cette dernière 
# (pas en partant du listing complet des mairies). Fais d'abord une méthode 
#  get_townhall_email(townhall_url) qui récupère l’e-mail d'une mairie à partir de l'URL de mairies, 
# par exemple celle de Avernes.
# Une fois que tu sais le faire pour une mairie, tu vas vouloir industrialiser et répéter ça sur tout l'annuaire
# du Val d'Oise. 
# La prochaine étape est de coder une méthode get_townhall_urls 
# qui récupère les URLs de chaque ville du Val d'Oise.




#ma découverte de xpath :
avernes_url = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/avernes.html"))
def get_townhall_email(townhall_url)
	townhall_url_array = []
	townhall_url.xpath('///tr[4]/td[2]').each do |node|
	townhall_url_array << node.text
	end
	print townhall_url_array
end

##j'ai essayé de faire l'exercice, normalement j'ai fini par réussir

def get_city_url ##collecter les urls

	city_url_array = []
	city_url = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	

	##Je me suis finalement servi du css selector parce que je selectionnais mal le tableau ou les colonnes avec Xpath
	city_url.css('a.lientxt').each do |node|  #xpath('//tr[2]/td[1]/table[1]').each do |node|
	###### 1 ###### j'ai décidé de me servir d'abord des URL , je voulais d'abord extraire les noms mais j'ai changé de stratégie

	city_url_array << node['href']#.text#.delete("<a class="lientxt" href="">", "</a><br>", "</p></td> </tr> </table>")
	###### 1 ###### je range mes terminaisons pour les addresses URL dans un tableau 
	end
	
	array_full_url=[]
	###### 1 ######  greffe des terminaisons collectées à l'adresse "nue"
	array_full_url=city_url_array.map{|i| "http://annuaire-des-mairies.com#{i.sub(".","")}"} #ajout des terminaison collectées à l'adresse "initiale"
	###### 1 ###### je range finalement ces nouvelles adress dans un tableau 
	return array_full_url
	# print city_url_array 
	
end




def get_one_city_name_one_city_mail(url) ##récupérer UN nom UN email

	vaureal_url = Nokogiri::HTML(open(url))
	vaureal_email_array = []
		###### 2 ######  on trouve les emplacements sur la page avec xpath 
		######   ###### + on les extrait en .text
		######   ###### 
	return hash ={ vaureal_url.xpath('/html[1]/body[1]/div[1]/main[1]/section[2]/div[1]/table[1]/tbody[1]/tr[4]/td[2]').text => vaureal_url.xpath('/html[1]/body[1]/div[1]/main[1]/section[1]/div[1]/div[1]/div[1]/p[1]/strong[1]/a[1]').text}
	
end




def perform ##créer un hash grâce à .map et demander d'y ranger le nom et l'email récupéré précedemment à chaque url
name_and_email_of_the_cities = get_city_url.map{|n| get_one_city_name_one_city_mail(n)}

puts name_and_email_of_the_cities

end

perform







# notes personnelles pour comprendre mon/mes raisonnement(s)




# donc recuperer URL.text >> tableau

# def get_city_url
# 	city_url_array = []
# ville = ["paris", "bordeaux"]
# ville.each do |ville|
# 	puts "ww.machin.com" + ville
# end





#commentaires inutiles
# dans ces urls "dynamiques", >> tableau

# lui indiquer avec xpath la place de chaque @
# récuperer les @ >> tableau
# PUIS hash pour réunir nom de mairies + les @

# 						[].each {|i| puts "url.com" + i}



# def get_townhall_urls
# end	


# référence à l'exercice precedent
# def get_crypto_name
# 	crypto_name_array = []
# 	crypto_name = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
# 	crypto_name.xpath('//td[3]').each do |node|
# 	crypto_name_array << node.text

# 	end
# 	crypto_name_array
# end


# commentaires inutiles

# leurs places dans les 3 colonnes :
# /td[1]/p[1]
# /td[2]/p[1]
# /td[3]/p[1]
# la place du tableau du site en xpath ?
# /html[1]/body[1]/table[1]/tbody[1]/tr[3]/td[1]/table[1]/tbody[1]/tr[1]/td[2]/p[2]/object[1]/table[1]/tbody[1]/tr[2]/td[1]/table[1]

