require 'rubygems'
require 'nokogiri' 
require 'open-uri'

#page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
#puts page.class   # => Nokogiri::HTML::Document


def get_crypto_name #récupère la colonne des noms des crypto
	crypto_name_array = []
	crypto_name = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	crypto_name.xpath('//td[3]').each do |node|
	crypto_name_array << node.text

	end
	crypto_name_array
end



def get_crypto_price #récupère la colonne du cours des crypto
	crypto_price_array = []
	crypto_price = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	crypto_price.xpath('//td[5]').each do |node|
	crypto_price_array << node.text.delete("\n")
	end
	crypto_price_array
end

def hash_of_crypto_rate #création du hash qui réunit les 2 méthodes créées précédemment

	#result = Hash.new { |hash_of_crypto_rate, crypto_name_array | hash_of_crypto_rate[crypto_name_array] = crypto_price_array }
	key = get_crypto_name
	value = get_crypto_price

	hash_of_crypto_rate = get_crypto_name.zip(get_crypto_price).to_h

end

print hash_of_crypto_rate #affiche le hash dans le terminal









#def crypto

#	crypto_price = Hash.new

#	crypto_name = Hash.new #{ |crypto_name| hash[key] =  }




#	result = Hash.new 
#	result['ta_key'] = 'ta_value'


#To match “h3” tags that have a class attribute, we write:
#	h3[@class]

#To match “h3” tags whose class attribute is equal to the string “r”, we write:

#	h3[@class = "r"]

#Using the attribute matching construct, we can modify 
#our previous query to:

#	//h3[@class = "r"]/a[@class = "l"]

#which in English terms is:

#    Find all "a" tags with a class attribute equal to 
#{}"l" and an immediate parent tag "h3" that has a class 
#attribute equal to "r"
#all_emails_links.each do |email_link|

#      puts email_link.text #ou n'importe quelle autre 
#      opération de ton choix ;)
#      end
#



#Rappel: un hash s’initialise avec result = Hash.new et 
#on y stocke des infos 
#avec result['ta_key'] = 'ta_value'

#.each dans un array pas .text




#N'hésite pas à découper ton programme en plusieurs étapes simples 
#et dont le fonctionnement est facile à vérifier. 
#Par exemple : 
#1) Isoler les éléments HTML qui vont bien, 

#2) En extraire le texte et mettre ça dans un hash, 

#3) Réorganiser ce hash dans un array de plusieurs mini-hash comme demandé. 
