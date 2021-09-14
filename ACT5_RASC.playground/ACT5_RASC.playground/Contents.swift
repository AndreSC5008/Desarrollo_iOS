//: Playground - noun: a place where people can play

import UIKit

/*:
 # Playground - Actividad 5
 * Class y Struct
 * Extension
 * Optional
 */


/*:
 ### Actividad Class y Struct
 A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto",
 el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
 */
class Persona{
    func Saludar(nombre:String) -> String {
        return ("Hola, \(nombre) mucho gusto ")
    }
    
    func Caminar(pasos:Int) -> String{
        return ("Se han caminado \(pasos) pasos")
    }
}

var persona1 = Persona()
print(persona1.Saludar(nombre: "André"))
print(persona1.Caminar(pasos: 5))

//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.

struct Pantalla{
    var ancho: Int
    var alto: Int
    
    init(ancho:Int, alto: Int) {
        self.ancho = ancho
        self.alto = alto
    }
    
    
}

var pantalla1 = Pantalla(ancho: 4, alto:3)
print("El ancho de la pantalla es \(pantalla1.ancho) y el largo \(pantalla1.alto)")
/*:
 ### Extensions
 A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
 */
extension Int{
    var horas : Int{
        return self * 60
    }
}


print("Minutos de 2 horas: \( 2.horas)")

//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7

extension String{
    var domingo: Int{
        return 1
    }
    var lunes: Int{
        return 2
    }
    var martes: Int{
        return 3
    }
    var miercoles: Int{
        return 4
    }
    var jueves: Int{
        return 5
    }
    var viernes: Int{
        return 6
    }
    var sabado: Int{
        return 7
    }
}

print("Domingo es el día de la semana numero: \( "dia".domingo)")


/*:
 ### Optionals
 A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
 */

var dato:Int?
dato = "dia".sabado
print(dato as Any)
//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]

let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]

var valor:Int?
valor = dias["DF"]
print(valor as Any)


