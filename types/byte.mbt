///|
pub impl Format for Byte with fn write(value, buffer, start) {
  buffer[start] = value
  1
}

///|
/// supremum
pub impl Format for Byte with fn count(_) -> Int32 {
  1
}
