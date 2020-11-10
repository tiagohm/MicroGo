# MicroGo

A lightweight and efficient implementation of the Go-based programming language optimised to run on 8-bit Microchip microcontrollers.

## Demo

```go
import "lcd"
import "adc"

package Main : lcd LCD(RC0_bit, RC1_bit, RC2_bit, RC3_bit, RC4_bit, RC5_bit, TRISC0_bit, TRISC1_bit, TRISC2_bit, TRISC3_bit, TRISC4_bit, TRISC5_bit), adc ADC() {

    func Read(channel int8) int16 {
        value := adc.GetSample(channel)
        return (value * 500) >> 10 - 50
    }

    func Main() {
        var texto [5]uint8
        // Define somente o pino RA0 como analógico.
        ADCON1 = 0x0E
        // Desabilita o comparador analógico.
        CMCON = 7
        // Inicializa o módulo ADC.
        adc.Init()
        // Inicializa o LCD.
        lcd.Init()
        lcd.Clear()
        lcd.CursorOff()

        for {
            value := Read(0)
            String.intToStr(value, texto)
            lcd.Cursor(2, 1)
            lcd.Out(texto)
            lcd.Chr('C')
            System.DelayMs(1000)
        }
    }
}
```