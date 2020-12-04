type I2C interface {
	func Init(clock int64)
	func Start() int8
	func RepeatedStart()
	func IsIdle() int8
	func Read(ack int8) int8
}