import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*:
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/


var costo_referencia:[Float] = [8.3,10.5,9.9]

func Impuesto (costo:[Float]) -> [Float] {
    var impuestos:[Float] = []
    for i in costo
    {
        impuestos.append(i * 1.16)

    }
    return impuestos
}

print(Impuesto(costo: costo_referencia))

//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.


let ValoresASumar = { (num1:Int, num2:Int) -> Int in return num1 + num2}

func Sumar3(numero1:Int, numero2:Int, numero3:Int) -> Int {
    return ValoresASumar(  numero1,numero2) + numero3
}

print(Sumar3(numero1: 5,numero2: 10,numero3: 8))

/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/

func CambiarValores<T>( valor1:T, valor2 :T) -> (T, T) {
    let nombre1 = valor2
    let nombre2 = valor1
    return (nombre1,nombre2)

}

var miguel = "Hola, yo soy Miguel"
var luis = "Hola, yo soy Luis"

(miguel, luis) = CambiarValores(valor1 : miguel, valor2:luis)

print(miguel)

//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
var datos = [3,7,9,2]

func Transformar (a:[Int]) -> [Int] {
    var nuevo:[Int] = []
    for i in a
    {
        nuevo.append(Cuadrado(i))

    }
    return nuevo
}

let Cuadrado = {(i: Int) -> Int in return i * i}

print( Transformar( a: datos))
/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/

var precios = [4.2, 5.3, 8.2, 4.5]

var impuesto = precios.map{i in return i * 1.16}

print(impuesto)

//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"

var precio_menor = impuesto.filter{ i in i > 6.0}
print(precio_menor)

