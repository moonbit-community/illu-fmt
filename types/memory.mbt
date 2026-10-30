///|
struct Memory(FixedArray[Byte])

///|
#alias("_[_]")
pub fn Memory::get(self : Memory, index : Int32) -> Byte = "%fixedarray.unsafe_get"

///|
#alias("_[_]=_")
pub fn Memory::set(self : Memory, index : Int32, value : Byte) -> Unit = "%fixedarray.unsafe_set"

///|
pub fn Memory::length(self : Memory) -> Int32 = "%fixedarray.length"

///|
pub fn Memory::make(len : Int32, init : Byte) -> Memory = "%fixedarray.make"
