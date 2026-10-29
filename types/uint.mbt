///|
fn reverse(xs : Memory, start : Int32, end : Int32) -> Unit {
  let mut i = start
  let mut j = end - 1
  while i < j {
    let temp = xs[i]
    xs[i] = xs[j]
    xs[j] = temp
    i += 1
    j -= 1
  }
}

///|
pub impl Format for UInt32 with fn write(value, buffer, start) {
  if value == 0 {
    buffer[start + 0] = b'0'
    return 1
  }
  let mut value = value
  let mut offset = start
  while value > 0 {
    let rem = value % 10
    buffer[offset] = UInt32::to_byte(rem + b'0'.to_uint())
    value /= 10
    offset += 1
  }
  reverse(buffer, start, offset)
  offset - start
}

///|
/// supremum
pub impl Format for UInt32 with fn count(_) -> Int32 {
  UInt_Digits10
}

///|
pub impl LittleEndianFormat for UInt32 with fn write(value, buffer, start) {
  let b0 = (value & 0xFF).to_byte()
  let b1 = ((value >> 8) & 0xFF).to_byte()
  let b2 = ((value >> 16) & 0xFF).to_byte()
  let b3 = ((value >> 24) & 0xFF).to_byte()
  buffer[start + 0] = b0
  buffer[start + 1] = b1
  buffer[start + 2] = b2
  buffer[start + 3] = b3
  4
}

///|
/// supremum
pub impl LittleEndianFormat for UInt32 with fn count(_) -> Int32 {
  4
}

///|
pub impl BigEndianFormat for UInt32 with fn write(value, buffer, start) {
  let b0 = ((value >> 24) & 0xFF).to_byte()
  let b1 = ((value >> 16) & 0xFF).to_byte()
  let b2 = ((value >> 8) & 0xFF).to_byte()
  let b3 = (value & 0xFF).to_byte()
  buffer[start + 0] = b0
  buffer[start + 1] = b1
  buffer[start + 2] = b2
  buffer[start + 3] = b3
  4
}

///|
/// supremum
pub impl BigEndianFormat for UInt32 with fn count(_) -> Int32 {
  4
}

///|
pub impl HexLowerFormat for UInt32 with fn write(value, buffer, start) {
  if value == 0 {
    buffer[start + 0] = b'0'
    return 1
  }
  let mut value = value
  let mut offset = start
  while value > 0 {
    let rem = value & 0xF
    buffer[offset] = lower_digit_table[rem.reinterpret_as_int()]
    value = value >> 4
    offset += 1
  }
  reverse(buffer, start, offset)
  offset - start
}

///|
/// supremum
pub impl HexLowerFormat for UInt32 with fn count(_) -> Int32 {
  8
}

///|
pub impl HexUpperFormat for UInt32 with fn write(value, buffer, start) {
  if value == 0 {
    buffer[start + 0] = b'0'
    return 1
  }
  let mut value = value
  let mut offset = start
  while value > 0 {
    let rem = value & 0xF
    buffer[offset] = upper_digit_table[rem.reinterpret_as_int()]
    value = value >> 4
    offset += 1
  }
  reverse(buffer, start, offset)
  offset - start
}

///|
/// supremum
pub impl HexUpperFormat for UInt32 with fn count(_) -> Int32 {
  8
}
