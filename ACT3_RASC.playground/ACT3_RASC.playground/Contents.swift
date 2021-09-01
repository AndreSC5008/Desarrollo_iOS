import Foundation
//Roberto Andre Sanchez Curiel
/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/


/*:
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, realizando la asignación explicita y la asignación inferida
*/

//ASIGNACION IMPLICITA
var intVariable = 14
var floatVariable = 35.0998
var cadenaVariable = "Soy una cadena"
var cadenaVariable2 = "Soy una variable de asignación implicita"

//ASIGNACION EXPLICITA

var intVariableEx:Int = 12
var floatVariableEx:Float = 202.88
var cadenaVariableEx:String = "Soy una cadena"
var cadenaVariable2Ex:String = "Soy una variable de asignación explicita"

/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
*/
var asociacionString = (uno:"camion", dos:"avion", tres:"auto")
print(asociacionString.uno)
//: B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.

var asociacionInt = (uno:10, dos:30, tres:40)
print(asociacionInt.dos)

/*:
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
*/
var numeros:Array<Int> = Array<Int>()
numeros.append( contentsOf : [1,2,3,4,5,6,7,8,9,10])
print(numeros)
//var numeros = [1,2,3,4,5,6,7,8,9,10] es otra solucion.

//: B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"
var semana:Dictionary<Int, String> = Dictionary<Int,String>()
semana = [1: "Lunes", 2:"Martes", 3:"Miercoles", 4:"Jueves", 5:"Viernes", 6:"Sabado", 7:"Domingo"]
print(semana)
//var semana = [1: "Lunes", 2:"Martes", 3:"Miercoles", 4:"Jueves", 5:"Viernes", 6:"Sabado", 7:"Domingo"] es otra solucion.



