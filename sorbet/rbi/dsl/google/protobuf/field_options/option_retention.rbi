# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::FieldOptions::OptionRetention`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::FieldOptions::OptionRetention`.

module Google::Protobuf::FieldOptions::OptionRetention
  class << self
    sig { returns(Google::Protobuf::EnumDescriptor) }
    def descriptor; end

    sig { params(number: Integer).returns(T.nilable(Symbol)) }
    def lookup(number); end

    sig { params(symbol: Symbol).returns(T.nilable(Integer)) }
    def resolve(symbol); end
  end
end

Google::Protobuf::FieldOptions::OptionRetention::RETENTION_RUNTIME = 1
Google::Protobuf::FieldOptions::OptionRetention::RETENTION_SOURCE = 2
Google::Protobuf::FieldOptions::OptionRetention::RETENTION_UNKNOWN = 0
