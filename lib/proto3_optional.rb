# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"
require 'google/protobuf'
require_relative "../protobuf/load_proto"
require "debug"


extend T::Sig

task = Protobuf::Task.new(id: 1, name: nil, completed: nil)

encoded_task = Protobuf::Task.encode(task)
decoded_task = Protobuf::Task.decode(encoded_task)


country = Protobuf::Country.new(
  id: 456,
  name: "Canada",
  currency: "CAD",
  capital: "Ottawa",
)

encoded_country = Protobuf::Country.encode(country)
decoded_country = Protobuf::Country.decode(encoded_country)




puts "break"
