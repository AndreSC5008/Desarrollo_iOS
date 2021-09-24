import UIKit

/*:
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/

infix operator ^^
func ^^ (a:Int, b:Int) -> Int {
    let result = pow(Double (a),Double (b))
    return Int(result)
}

print( 5 ^^ 2)




//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
var collecion = [2,5,3,4]

prefix operator |>
prefix func |> ( a : Array <Int> ) -> Array <Int> {
   var  result =  a
   result.sort()
    return result
    
}
collecion = |>collecion
print(collecion)



/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/

class Valores{
    var values : [Int]
    init (v: [Int])
    {
        self.values = v
    }

    subscript (i:Int)-> Int {
        get {
            return values[i]
        }

        set(newV) {

            if (i % 2 == 0)
            {
                values [i] = newV
            }
            else{
                print ("Este valor no es divisible entre 2")
            }

        }
    }
}

let valores1 =  Valores(v: collecion)

print(valores1[1])
valores1[1] = 4

print(valores1[0])
valores1[0] = 4

print(valores1[0])

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps

// Este código no es de mi propiedad y fue encontrado en https://www.advancedswift.com/cgpoint-examples-lottie-charts/
extension CGRect {
    
    var enemigo: CGPoint {
        
        get {
          return CGPoint(x: midX, y: midY)
        }
        set {
            origin = CGPoint(
                x: newValue.x - (size.width * 0.5),
                y: newValue.y - (size.height * 0.5)
            )
        }
    }
}
/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
var coleccion1 = ["A":1, "B":2,"C":3]


func ExisteValor(i:String) {

    guard let result = coleccion1[i] else {
        return }
    
    print(result)

    
}

ExisteValor(i:"A")
