///|
pub(all) struct HexUpper[T](T)

///|
/// if contract is violated, behavior is undefined
pub(open) trait HexUpperFormat {
  /// Write the `value` into `buffer` as the `start` position,
  /// and return the number of bytes written.
  ///
  /// The number of bytes written must not exceed count().
  fn write(value : Self, buffer : Memory, start : Int32) -> Int32
  /// Upper bound on the number of bytes written
  fn count(value : Self) -> Int32
}

///|
pub impl[T : HexUpperFormat] Format for HexUpper[T] with fn write(
  value,
  buffer,
  start,
) {
  T::write(value.0, buffer, start)
}

///|
pub impl[T : HexUpperFormat] Format for HexUpper[T] with fn count(self) {
  T::count(self.0)
}
