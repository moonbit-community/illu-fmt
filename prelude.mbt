///|
pub using @types {format_write, format_count}

///|
pub fn[T : @types.Format] count(value : T) -> Int {
  @types.Format::count(value)
}

///|
pub fn[T : @types.Format] write(
  value : T,
  buffer : @types.Memory,
  start : Int,
) -> Int {
  @types.Format::write(value, buffer, start)
}

///|
pub fn[T] big_endian(x : T) -> @types.BigEndian[T] {
  @types.BigEndian(x)
}

///|
pub fn[T] little_endian(x : T) -> @types.LittleEndian[T] {
  @types.LittleEndian(x)
}

///|
pub fn[T] hex_lower(x : T) -> @types.HexLower[T] {
  @types.HexLower(x)
}

///|
pub fn[T] hex_upper(x : T) -> @types.HexUpper[T] {
  @types.HexUpper(x)
}

///|
pub fn[T] padding_center(
  x : T,
  width~ : Int,
  padding~ : Byte,
) -> @padding.Center[T] {
  @padding.Center(x, width~, padding~)
}

///|
pub fn[T] padding_left(
  x : T,
  width~ : Int,
  padding~ : Byte,
) -> @padding.Left[T] {
  @padding.Left(x, width~, padding~)
}

///|
pub fn[T] padding_right(
  x : T,
  width~ : Int,
  padding~ : Byte,
) -> @padding.Right[T] {
  @padding.Right(x, width~, padding~)
}

///|
pub using @types {type Memory}

///|
pub using @types {trait Format}
