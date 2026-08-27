@_exported public import Format
@_exported public import Tagged

extension Tagged where Tag: ~Copyable & ~Escapable, Underlying: BinaryFloatingPoint {

    @inlinable
    public func formatted(_ format: Format.Decimal) -> String {
        format.format(underlying)
    }
}
