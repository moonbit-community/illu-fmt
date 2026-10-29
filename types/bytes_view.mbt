///|
pub impl Format for BytesView with fn write(value, buffer, start) {
  for i in 0..<value.length() {
    buffer[start + i] = value[i]
  }
  value.length()
}

///|
/// supremum
pub impl Format for BytesView with fn count(self) -> Int32 {
  self.length()
}
