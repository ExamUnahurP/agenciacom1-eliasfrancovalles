class Packs {
    var property duracionEnDias
    var property precioBase
    const property beneficiosEspeciales = []
    const property coordinadorACargo
    
    method beneficiosVigentes() = beneficio.filter({beneficio => beneficio.costo()})

    

    method valorFinal() = precioBase + self.costoTotalVigentes()
}

class Nacionales inherits Packs {
    var property provinciaDestino
    const property actividadesIncluidas = [""]
}

class Internacionales inherits Packs {
    var property paisDestino
    var property cantidadDeEscalas
    var property esDeInteres

    override method valorFinal() = super() * 1.20
}

class Coordinador {
    var property cantidadDeViajesRealizados
    var property estaMotivado
    var property añosDeExperiencia
    var rol = "Guia"

    const rolesValidos = #{"Guia", "Asistente logistico", "Acompañante"}
    
    method rolInvalido(nuevoRol) {
        if(not rolesValidos.contains(nuevoRol)) {
            self.error("rol excepcion")
        } else {
            rol = nuevoRol
        }
    }
}

class Beneficio {
    const property tipo = #{"TrasladosPrivados", "AccesoASalasVip", "SegurosAdicionales"}
    var property costo
    var property estaVigente
}

