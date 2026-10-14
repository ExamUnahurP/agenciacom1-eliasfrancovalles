class Packs {
    const property duracionEnDias
    const property precioBase
    const property beneficiosEspeciales
    const property coordinadorACargo
}


class nacionales inherits Packs {
    const property provinciaDestino
    const property actividades incluidad = []
}

class internacionales inherits Packs {

}