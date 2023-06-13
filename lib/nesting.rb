# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"
require 'google/protobuf'
require_relative "../protobuf/load_proto"

extend T::Sig


sig {params(num: Integer).returns(T::Array[Protobuf::Configurations::Configuration])}
def build_configurations(num = 3)
  result = []
  1.upto(num) do |count|
    result << Protobuf::Configurations::Configuration.new(
        id: count,
        name: "config-#{count}",
        type: 0,
        context: 1
      )
  end

  result
end

configs = Protobuf::Configurations.new
# build_configs = build_configurations
configs.configurations = Google::Protobuf::RepeatedField.new(:message, build_configurations)

puts configs


