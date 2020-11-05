# Ugo - Go for Microcontrollers

## Dropped Features

* Dot package (is it necessary?)
* Map type (surely that it can not be implemented)
* Channels support (same as above)
* Defer keyword (same as above)
* Type assertion (Can be implemented in the future?)
* Type Switch (Can be implemented in the future?)
* Type Alias (it is not necessary)

## Enum type support
* https://github.com/golang/go/issues/19814

```go
enum Status int8 {
    OFF
    ON
}

status := Status.OFF
index := int8(status) // 0
```

## k, M, G, etc

```go
kilo := 1k
mega := 1M
giga := 1G
```

## Built-in Annotation support

```go
package main

// Global annotations
@Device("P12F675") // Can not be overrided, must be unique
@Clock(4000000) // Can be overrided here
@DisableContexSaving
@OrgAll(0x1000)
@ReentrancyCheckOff

var x int8 = 0 @Absolute(0x22)
var y int8 @Ram
var z int8 @Rom
var a int8 @Rx
var b int8 @Sfr
var c int8 @Ldm

func main() @Org(0x100) {

}
```

## Fuses/Configuration bits

```go
@Fuses(Config: 0x1000)
```

or

```go
fuses (
    CONFIG = 0x1000
)
```

## Interrupt

```go
func timer0() @Interrupt() {

}

func timer1() @Interrupt(Iv: 0x0008, Ics: false) @Org(0x600) {

}
```

## Asm

## Ver se função recursiva é permitida
MikroC permite? E se não tiver variáveis? E como fica os RX da função Delay_Ms()?