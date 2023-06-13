# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"
require 'google/protobuf'
require_relative "../protobuf/load_proto"

repeated_ints = Google::Protobuf::RepeatedField.new(:int32, [1,10,21,31,41])
puts repeated_ints

# Need to find out what the package does
