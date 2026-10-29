///|
pub impl Format for Int32 with fn write(value, buffer, start) {
  if value >= 0 {
    let value = value.reinterpret_as_uint()
    Format::write(value, buffer, start)
  } else {
    let value = (-value).reinterpret_as_uint()
    buffer[start] = b'-'
    Format::write(value, buffer, start + 1) + 1
  }
}

///|
/// supremum
pub impl Format for Int32 with fn count(_) -> Int32 {
  Int_Digits10
}

///|
pub impl LittleEndianFormat for Int32 with fn write(value, buffer, start) {
  LittleEndianFormat::write(value.reinterpret_as_uint(), buffer, start)
}

///|
/// supremum
pub impl LittleEndianFormat for Int32 with fn count(_) -> Int32 {
  4
}

///|
pub impl BigEndianFormat for Int32 with fn write(value, buffer, start) {
  BigEndianFormat::write(value.reinterpret_as_uint(), buffer, start)
}

///|
/// supremum
pub impl BigEndianFormat for Int32 with fn count(_) -> Int32 {
  4
}

///|
pub impl HexLowerFormat for Int32 with fn write(value, buffer, start) {
  HexLowerFormat::write(value.reinterpret_as_uint(), buffer, start)
}

///|
/// supremum
pub impl HexLowerFormat for Int32 with fn count(_) -> Int32 {
  8
}

///|
pub impl HexUpperFormat for Int32 with fn write(value, buffer, start) {
  HexUpperFormat::write(value.reinterpret_as_uint(), buffer, start)
}

///|
/// supremum
pub impl HexUpperFormat for Int32 with fn count(_) -> Int32 {
  8
}
