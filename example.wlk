class NaveCapital {
  var velocidad = 100
  var direccion = 0

  method velocidad() = velocidad
  method acelerar(cuanto){
    velocidad = (cuanto.min(100000)).max(self.velocidad())
  }
  method desacelerar(cuanto){
    velocidad = (cuanto.max(0)).min(self.velocidad())
  }
  method irHaciaElSol(){
    direccion = 10
  }
  method escaparDelSol(){
    direccion = -10
  }
  method ponerParaleloAlSol(){
    direccion = 0
  }
  method acercarUnPocoAlSol(){
    direccion = (direccion+1).min(10)
  }
  method alejarseUnPocoDelSol(){
    direccion = (direccion-1).max(-10)
  }
}
  class NavesBaliza inherits NaveCapital{
    var baliza = "verde"
    method cambiarColorDeBaliza(colorNuevo){
      baliza = colorNuevo
    }
    method colorBaliza() = baliza
  }

  class NavePasajeros inherits NaveCapital{
    var pasajeros = 7
    var racionesDeBebida = 7
    var racionesDeComida = 7

    method cargarBebidas(cantBebidas){
      racionesDeBebida += cantBebidas
    }
    method cargarComida(cantComida){
      racionesDeComida += cantComida
    }
    method descargarBebida(cantBebidas){
      racionesDeBebida -= cantBebidas
    }
    method descargarComida(cantComida){
      racionesDeComida -= cantComida
    }
  }

class NaveCombate inherits NaveCapital{
    var estaInvisible = true
    method ponerseVisible(){
      estaInvisible = false
    }
    method ponerseInvisible(){
      estaInvisible = true
    }
    method estaInvisible() = estaInvisible
    
    method emitirMensaje(mensaje){
      
    }
}

  const nave = new NaveCapital()
