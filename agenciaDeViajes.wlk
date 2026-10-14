class Packs {
    const property duracionEnDias
    const property precioBase
    const property beneficiosEspeciales
    const property coordinadorACargo = []
}


class Nacionales inherits Packs {
    const property provinciaDestino
    const property actividadesIncluidas = []
}

class Internacionales inherits Packs {
    const property paisDestino
    const property cantidadEscalas
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