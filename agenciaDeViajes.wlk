class Packs {
    const property duracionEnDias
    const property precioBase
    const property beneficiosEspeciales
    const property coordinadorACargo
    
    method valor() = precioBase + 
}

class Nacionales inherits Packs {
    const property provinciaDestino
    const property actividadesIncluidas = [""]

    method valor() = precioBase 
}

class Internacionales inherits Packs {
    const property paisDestino
    const property cantidadDeEscalas
    const property esDeInteres
}

object coordinador {
    const property cantidadDeViajesRealizados
    const property estaMotivado
    const property añosDeExperiencia
    const rol = "Guia"
    
    method rol(cambio) {
        if (cambio == "Guia" and cambio == "Asistente logistico" and cambio == "Acompañante") {
            rol = cambio
        } else {
            self.error("excepcion")
        }
    }
}

object beneficiosEspeciales {
    var beneficiosOpcionales = ["Traslados privados", "Acceso a salas VIP", "Seguros adicionales"]
    const property tipo
    const property costo
    const property estaVigente
}

