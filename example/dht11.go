import "i2c"

package Dht11(data, dataDir sbit, soft bool) : i2c I2C(soft: soft) {
	
	func Read() (float32, float32) {
		return (0, 0)
	}
}