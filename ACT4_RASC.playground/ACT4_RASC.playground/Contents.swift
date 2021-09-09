//: Playground - noun: a place where people can play

import UIKit


/*:
 Autor: ROBERTO ANDRÉ SÁNCHEZ CURIEL
 Fecha: 08-09-21
 # Playground - Actividad 4
 * Condicionales y Ciclos
 * Funciones
 * Enumareción
 */

/*:
 ### Condicionales y Ciclos
 A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
 */

var datos = [3,6,9,2,4,1]
var dMenoresDe5: Array<Int> = Array<Int>()


//: B) realizar el recorrido de la variable "datos" con la instrucción "for"

for datos in datos {
    //: C) Encontrar los valores menores a 5
    if datos<5{
        dMenoresDe5.append(datos)
        
    }
}

print("datos menores a 5 = \(dMenoresDe5)")


/*:
 ### Funciones
 A) Crea la función "suma" que reciba dos parámetros de tipo entero regresando la suma de ambos números.
 */
func suma(num1:Int, num2:Int) -> Int {
    return num1 + num2
}
print("Funcion suma = \(suma(num1:4,num2:6))")
//: B) Crear la función "potencia" que reciba dos parámetros de tipo entero, el primer parámetro para el numero base y el segundo la potencia a elevar, regresando el resultado de la potencia.
func potencia(num1:Int, num2:Int) -> Int {
    return num1 << (num2 - 1)
}
print("Funcion potencia = \(potencia(num1:2,num2:3))")
/*:
 ### Enumeraciones
 A) Crea la enumaración "meses" para definir tipos de datos basados en los meses del año.
 */
enum meses {
    case enero
    case febrero
    case marzo
    case abril
    case mayo
    case junio
    case julio
    case agosto
    case septiembre
    case octubre
    case noviembre
    case diciembre
}

//: B) Crear la función "numeroMes" que reciba el tipo de dato "meses" y regrese el numero del mes correspondiente

func numeroMes (mes:meses ) -> Int {
    //: C) Para regresar el numero de mes correspondiente utilizar la "switch"
    switch mes {
    case meses.enero:return 1
    case meses.febrero:return 2
    case meses.marzo:return 3
    case meses.abril:return 4
    case meses.mayo:return 5
    case meses.junio:return 6
    case meses.julio:return 7
    case meses.agosto:return 8
    case meses.septiembre:return 9
    case meses.octubre:return 10
    case meses.noviembre:return 11
    case meses.diciembre :return 12
  
    }
    
    
}

print("Funcion numeroMes = \(numeroMes(mes:meses.septiembre))")





