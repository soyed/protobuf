# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"
require 'google/protobuf'
require_relative "../protobuf/load_proto"
require 'debug'



class Country
  extend T::Sig

  sig do
    params(
      id: Integer,
      name: String,
      currency: String,
      capital: String,
      independent: T.nilable(T::Boolean),
      established: T.nilable(Integer),
      country_code: T.nilable(String)
    ).void
  end
  def initialize(id:, name:, currency:, capital:, independent:, established:, country_code:)
    @id = id
    @name = name
    @currency = currency
    @capital = capital
    @independent = independent
    @established = established
    @country_code = country_code
  end
end


country1 = Protobuf::Country.new(
  id: 456,
  name: "Canada",
  currency: "CAD",
  capital: "Ottawa",
)





encoded1 = Protobuf::Country.encode(country1)
decoded1 = Protobuf::Country.decode(encoded1)
transformed_country_1 = Country.new(
  id: decoded1.id,
  name: decoded1.name,
  currency: decoded1.currency,
  capital: decoded1.capital,
  independent: decoded1.independent,
  established: decoded1.established,
  country_code: decoded1.country_code

)



# optional primitive values
country2 = Protobuf::Country.new(
  id: 1267,
  name: "United States of America",
  currency: "USD",
  capital: "Washington",
  independent: Google::Protobuf::BoolValue.new(value: true),
  established: Google::Protobuf::Int64Value.new(value: 1980),
  country_code: nil
)
encoded2 = Protobuf::Country.encode(country2)
decoded2 = Protobuf::Country.decode(encoded2)



transformed_country_2 = Country.new(
  id: decoded2.id,
  name: decoded2.name,
  currency: decoded2.currency,
  capital: decoded2.capital,
  independent: decoded2.independent.nil? ? decoded2.independent : decoded2.independent.value,
  established: decoded2.established.nil? ? decoded2.established : decoded2.established.value,
  country_code: decoded2.country_code.nil? ? decoded2.country_code : decoded2.country_code.value
)




