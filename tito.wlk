object tito {
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method bebida() = bebida

    method velocidad() {
        return bebida.rendimiento(cantidad)
        * self.inerciaBase() / self.peso()
    }
}
object wisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}
object cianuro {
    method rendimiento(cantidad) = 0
}
object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
    }
}
object licuado{
    const nutrientes = []
    method agregar(cantidadDeNutrientes){
        nutrientes.add(cantidadDeNutrientes)
    }
    method rendimiento(unaDosis){
        return(nutrientes.sum() * unaDosis)
    }  
}
object aguaSaborizada{
    var sabor = 0
    const cantidadDeAgua = 1
    method agregar(unaBebida){
        sabor = unaBebida
    }
    method rendimiento(unaDosis){
        return(sabor * 0.25 + cantidadDeAgua * 0.75)
    }
}
object coctel{
    const bebidas = []
    method agregar(unaBebida){
        bebidas.add(unaBebida)
    }
    method rendimiento(unaDosis){
        return(
            bebidas.sum({bebida=>bebida.rendimiento(unaDosis)})
        )
    }
}
