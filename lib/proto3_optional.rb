# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"
require 'google/protobuf'
require_relative "../protobuf/load_proto"
require "debug"

class Task
  extend T::Sig

  sig do
    params(
      id: T.nilable(Integer),
      name: T.nilable(String),
      completed: T.nilable(T::Boolean),
    ).void
  end
  def initialize(id:, name:, completed:)
    @id = id
    @name = name
    @completed = completed
  end
end

task = Protobuf::Task.new(id: 1, name: nil, completed: nil)

encoded_task = Protobuf::Task.encode(task)
decoded_task = Protobuf::Task.decode(encoded_task)

new_task = Task.new(
  id: decoded_task.has_id? ? decoded_task.id : nil,
  name: decoded_task.has_name? ? decoded_task.name : nil,
  completed: decoded_task.has_completed? ? decoded_task.completed : nil,
)

country = Protobuf::Country.new(
  id: 456,
  name: "Canada",
  currency: "CAD",
  capital: "Ottawa",
)

encoded_country = Protobuf::Country.encode(country)
decoded_country = Protobuf::Country.decode(encoded_country)




puts "break"
