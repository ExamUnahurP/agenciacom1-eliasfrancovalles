class Packs {
    const property duracionEnDias
    const property precioBase
    const property beneficiosEspeciales
    const property coordinadorACargo
}


class nacionales inherits Packs {
    const property provinciaDestino
    const property actividadesIncluidas = []
}

class internacionales inherits Packs {
    const property paisDestino
    const property cantidadEscalas
    
}