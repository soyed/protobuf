# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::ServiceOptions`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::ServiceOptions`.

class Google::Protobuf::ServiceOptions
  sig do
    params(
      deprecated: T.nilable(T::Boolean),
      uninterpreted_option: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption], T::Array[Google::Protobuf::UninterpretedOption]))
    ).void
  end
  def initialize(deprecated: nil, uninterpreted_option: Google::Protobuf::RepeatedField.new(:message, Google::Protobuf::UninterpretedOption)); end

  sig { void }
  def clear_deprecated; end

  sig { void }
  def clear_uninterpreted_option; end

  sig { returns(T::Boolean) }
  def deprecated; end

  sig { params(value: T::Boolean).void }
  def deprecated=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]) }
  def uninterpreted_option; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]).void }
  def uninterpreted_option=(value); end
end