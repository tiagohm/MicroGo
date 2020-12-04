import "dht11"

package Main : dht11 Dht11(PORTB.B0) {
	
	func main() {
		dht11.Read()
	}
}