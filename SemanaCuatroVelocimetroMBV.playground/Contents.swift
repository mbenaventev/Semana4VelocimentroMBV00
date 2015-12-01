//: Playground - noun: a place where people can play
// Reto de programación Semana 4, Velocimetro
// Autor: Miguel Benavente Valdés
import UIKit

enum Velocidades : Int {
    
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad : Velocidades
    
    init (velocidad : Velocidades){
        self.velocidad = Velocidades.apagado
    }
    
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String)
    {
        var velocidadActual : Int
        var velocidadCadena : String
        var resultado = (0, "")
        
        
        if velocidad == Velocidades.apagado
        {
            velocidadActual = Velocidades.apagado.rawValue
            velocidadCadena = "Apagado"
            resultado = (velocidadActual, velocidadCadena)
            velocidad = Velocidades.velocidadBaja
            return resultado
            
            
        }
        if velocidad == Velocidades.velocidadBaja
        {
            velocidadActual = Velocidades.velocidadBaja.rawValue
            velocidadCadena = "Velocidad Baja"
            resultado = (velocidadActual, velocidadCadena)
            velocidad = Velocidades.velocidadMedia
            return resultado
            
        }
        if velocidad == Velocidades.velocidadMedia
        {
            velocidadActual = Velocidades.velocidadMedia.rawValue
            velocidadCadena = "Velocidad Media"
            resultado = (velocidadActual, velocidadCadena)
            velocidad = Velocidades.velocidadAlta
            return resultado
            
        }
        if velocidad == Velocidades.velocidadAlta
        {
            velocidadActual = Velocidades.velocidadAlta.rawValue
            velocidadCadena = "Velocidad Alta"
            resultado = (velocidadActual, velocidadCadena)
            velocidad = Velocidades.velocidadMedia
            return resultado
        }
        return resultado
    }
}


var carro = Auto(velocidad : Velocidades.apagado)
var i : Int = 0

for (i=0; i<20; i++)
{
    var (velAct,Mensaje)=carro.cambioDeVelocidad()
    print("\(velAct) \(Mensaje)")
}


