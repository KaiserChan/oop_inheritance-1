require 'httparty'
require 'json'


# This class represents a world traveller who knows what languages are spoken in each country
# around the world and can cobble together a sentence in most of them (but not very well)
class Multilinguist

  TRANSLTR_BASE_URL = "http://bitmakertranslate.herokuapp.com"
  COUNTRIES_BASE_URL = "https://restcountries.eu/rest/v2/name"
  #{name}?fullText=true
  #?text=The%20total%20is%2020485&to=ja&from=en


  # Initializes the multilinguist's @current_lang to 'en'
  #
  # @return [Multilinguist] A new instance of Multilinguist
  def initialize
    @current_lang = 'en'
    @quote
  end

  # Uses the RestCountries API to look up one of the languages
  # spoken in a given country
  #
  # @param country_name [String] The full name of a country
  # @return [String] A 2 letter iso639_1 language code
  def language_in(country_name)
    params = {query: {fullText: 'true'}}
    response = HTTParty.get("#{COUNTRIES_BASE_URL}/#{country_name}", params)
    json_response = JSON.parse(response.body)
    json_response.first['languages'].first['iso639_1']
  end

  # Sets @current_lang to one of the languages spoken
  # in a given country
  #
  # @param country_name [String] The full name of a country
  # @return [String] The new value of @current_lang as a 2 letter iso639_1 code
  def travel_to(country_name)
    local_lang = language_in(country_name)
    @current_lang = local_lang
  end

  # (Roughly) translates msg into @current_lang using the Transltr API
  #
  # @param msg [String] A message to be translated
  # @return [String] A rough translation of msg
  def say_in_local_language(msg)
    params = {query: {text: msg, to: @current_lang, from: 'en'}}
    response = HTTParty.get(TRANSLTR_BASE_URL, params)
    json_response = JSON.parse(response.body)
    json_response['translationText']
  end
end


# ********** MATH GENIUS BELOW **********
# class MathGenius < Multilinguist
#
#   def report_total(array_numbers)
#     puts "#{say_in_local_language("The total is ")} #{array_numbers.sum}"
#   end
#
# end
#
# kaiser = MathGenius.new
#
# puts kaiser.report_total([12, 24, 36])
#
# kaiser.travel_to("Germany")
# puts kaiser.report_total([12, 24, 36])

# kaiser.travel_to("Japan")
# puts kaiser.report_total([12, 24, 36])

# kaiser.travel_to("France")
# puts kaiser.report_total([12, 24, 36])



# ********** QUOTE COLLECTOR BELOW **********
class QuoteCollector < Multilinguist

  @@quote = []

  def add_quote(quote)
    @@quote << quote
  end

  def quote
    @@quote
  end

  def share_quote
    random_quote = quote.sample
    say_in_local_language(random_quote)
  end

end

@quote = QuoteCollector.new

# kaiser.add_quote("Do what you love. Love what you do")
# kaiser.add_quote("Sometimes you win. Sometimes you learn")
# kaiser.add_quote("If not now, then when?")
@quote.add_quote("Goodbye")
puts @quote.quote

@quote.travel_to("Germany")
puts @quote.share_quote
