class Packs {
    var property duracionEnDias
    var property precioBase
    const property beneficiosEspeciales = []
    const property coordinadorACargo
    
    method valor() = precioBase + beneficiosEspeciales.costoVigente()
}

class Nacionales inherits Packs {
    var property provinciaDestino
    const property actividadesIncluidas = [""]
}

class Internacionales inherits Packs {
    var property paisDestino
    var property cantidadDeEscalas
    var property esDeInteres

    override method valor() = super() / 20
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

object beneficiosEspeciales {
    var beneficiosOpcionales = ["Traslados privados", "Acceso a salas VIP", "Seguros adicionales"]
    const property tipo
    const property costo
    var property estaVigente

    method costoVigente() = if (estaVigente == true) costo
}

class BeneficiosOpcionales {
    var property tipo = ["TrasladosPrivados", "AccesoASalasVip", "SegurosAdicionales"]
    var property costo
     property estaVigente
    
    method costoVigente() = if (estaVigente == true) costo
}