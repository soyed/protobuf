# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Google::Protobuf::MethodOptions`.
# Please instead update this file by running `bin/tapioca dsl Google::Protobuf::MethodOptions`.

class Google::Protobuf::MethodOptions
  sig do
    params(
      deprecated: T.nilable(T::Boolean),
      idempotency_level: T.nilable(T.any(Symbol, Integer)),
      uninterpreted_option: T.nilable(T.any(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption], T::Array[Google::Protobuf::UninterpretedOption]))
    ).void
  end
  def initialize(deprecated: nil, idempotency_level: nil, uninterpreted_option: Google::Protobuf::RepeatedField.new(:message, Google::Protobuf::UninterpretedOption)); end

  sig { void }
  def clear_deprecated; end

  sig { void }
  def clear_idempotency_level; end

  sig { void }
  def clear_uninterpreted_option; end

  sig { returns(T::Boolean) }
  def deprecated; end

  sig { params(value: T::Boolean).void }
  def deprecated=(value); end

  sig { returns(T.any(Symbol, Integer)) }
  def idempotency_level; end

  sig { params(value: T.any(Symbol, Integer)).void }
  def idempotency_level=(value); end

  sig { returns(Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]) }
  def uninterpreted_option; end

  sig { params(value: Google::Protobuf::RepeatedField[Google::Protobuf::UninterpretedOption]).void }
  def uninterpreted_option=(value); end
end
