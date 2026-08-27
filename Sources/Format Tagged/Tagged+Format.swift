public import Format
public import Tagged

extension Tagged where Tag: ~Copyable & ~Escapable, Underlying: BinaryFloatingPoint {

    @inlinable
    public func formatted(_ format: Format.Decimal) -> String {
        format.format(underlying)
    }
}
