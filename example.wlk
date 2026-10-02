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
  method prepararViaje()
}
  class NavesBaliza inherits NaveCapital{
    var baliza = "azul"
    method cambiarColorDeBaliza(colorNuevo){
      baliza = colorNuevo
    }
    method colorBaliza() = baliza
    override method prepararViaje(){
      self.cambiarColorDeBaliza("verde")
      self.ponerParaleloAlSol()
    }
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
    override method prepararViaje(){
      self.cargarComida(4*pasajeros)
      self.cargarBebidas(6*pasajeros)
      self.acercarUnPocoAlSol()
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
    
    var misilesDesplegados = true
    method desplegarMisiles(){
      misilesDesplegados = true
    }
    method replegarMisiles(){
      misilesDesplegados = false
    }
    method misilesDesplegados() = misilesDesplegados
    
    const mensajes = []
    method emitirMensaje(mensaje){
      mensajes.add(mensaje)
    }
    method mensajesEmitidos(){
      return mensajes.all()
    }
    method primerMensajeEmitido(){
      return mensajes.first()
    }
    method ultimoMensajeEmitido(){
      return mensajes.last()
    }
    method esEscueta(){
      return 
    }
    method emitioMensaje(mensaje){
      return mensajes.any(mensaje)
    }

}

  const nave = new NaveCapital()
