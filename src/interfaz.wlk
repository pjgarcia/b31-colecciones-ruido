import objects.*

const anioActual = 2019

object carritoDeSuper {
	var productos = [
		arroz,
		jabon
	];
	
	method productos() = productos
	
	method agregarProducto(producto) {
		productos.add(producto)
	}
	method sacarProducto(producto) {
		productos.remove(producto)
	}
	method cantidadDeProductos() {
		return productos.size()
	}
	method verSiTengoUnProducto(producto) {
		return productos.contains(producto)
	}
	method repasarProductos() {
		productos.forEach {p => console.println(p)}	
	}
	
	method todosLosProductosEstanEnBuenEstado() {
		return productos.all({p => p.vencimiento() > anioActual})
	}
	method hayAlgunProductoMuyCaro() {
		return productos.any {p => p.precio() > 100}
	}
	method cantidadDeProductosDeLimpieza() {
		return productos.count {p => p.tipo() == "LIMPIEZA"}
	}
	method productosVencidos() {
		return productos.filter {p => p.vencimiento() < anioActual}
	}
	method buscarProducto(nombre) {
		return productos.find {p => p.nombre() == nombre}
	}
	method preciosDeProductos() {
		return productos.map({p => p.precio() })
	}
	method costoTotalDeProductos() {
		return productos.fold(0, {suma, p => suma + p.precio()})
	}
	
	
	// 1RA EXTENSION (implementar usando OTROS métodos
	// de la interfaz de Collection)
	method costoTotalB() {
		var total = 0
		productos.forEach {p => total += p.precio()}
		return total;
	}
	method costoTotalC() {
		const precios = productos.map {p => p.precio()}
		return precios.sum();
	}
	method costoTotalD() {
		return productos.sum {p => p.precio()}
	}
	
	// 2DA EXTENSION
	// implementar usando FOREACH:
	// map, filter, some, any, etc
}



