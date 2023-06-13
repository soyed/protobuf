# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"
require 'google/protobuf'
require_relative "../protobuf/load_proto"


extend T::Sig

person = Protobuf::Person.new(id: 12, name: "user1", is_active: false)
puts person

encoded_data = Protobuf::Person.encode(person)
puts "Encoded data..."
p encoded_data
decoded = Protobuf::Person.decode(encoded_data)
puts "Decoded data..."
p decoded

puts "Encoded Json data..."
encoded_json = Protobuf::Person.encode_json(person)
puts encoded_json
puts "Decoded Json data..."
decoded_json = Protobuf::Person.decode_json(encoded_json.to_s)
puts decoded_json

