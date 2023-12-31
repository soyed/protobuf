# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: protobuf/configurations.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("protobuf/configurations.proto", :syntax => :proto3) do
    add_message "protobuf.Configurations" do
      repeated :configurations, :message, 1, "protobuf.Configurations.Configuration"
    end
    add_message "protobuf.Configurations.Configuration" do
      optional :id, :uint64, 1
      optional :name, :string, 2
      optional :type, :enum, 3, "protobuf.Configurations.ConfigType"
      optional :context, :enum, 4, "protobuf.Configurations.ConfigContext"
    end
    add_enum "protobuf.Configurations.ConfigType" do
      value :PLAIN, 0
      value :CUSTOM, 1
    end
    add_enum "protobuf.Configurations.ConfigContext" do
      value :GLOBAL, 0
      value :USER, 1
      value :PROJECT, 2
    end
  end
end

module Protobuf
  Configurations = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("protobuf.Configurations").msgclass
  Configurations::Configuration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("protobuf.Configurations.Configuration").msgclass
  Configurations::ConfigType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("protobuf.Configurations.ConfigType").enummodule
  Configurations::ConfigContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("protobuf.Configurations.ConfigContext").enummodule
end
