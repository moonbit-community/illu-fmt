/// private utility functions for memory manipulation

///|
fn memory_copy_forward(
  dst~ : @fmt.Memory,
  dst_start~ : Int32,
  src~ : @fmt.Memory,
  src_start~ : Int32,
  len~ : Int32,
) -> Unit {
  let dst_end = dst_start + len
  for dst_ofs = dst_start, src_ofs = src_start
      dst_ofs < dst_end
      dst_ofs = dst_ofs + 1, src_ofs = src_ofs + 1 {
    dst[dst_ofs] = src[src_ofs]
  }
}

///|
fn memory_copy_backward(
  dst~ : @fmt.Memory,
  dst_start~ : Int32,
  src~ : @fmt.Memory,
  src_start~ : Int32,
  len~ : Int32,
) -> Unit {
  for dst_ofs = dst_start + len - 1, src_ofs = src_start + len - 1
      dst_ofs >= dst_start
      dst_ofs = dst_ofs - 1, src_ofs = src_ofs - 1 {
    dst[dst_ofs] = src[src_ofs]
  }
}

///|
fn memory_fill(
  memory~ : @fmt.Memory,
  start~ : Int32,
  len~ : Int32,
  value~ : Byte,
) -> Unit {
  for ofs = start; ofs < start + len; ofs = ofs + 1 {
    memory[ofs] = value
  }
}
