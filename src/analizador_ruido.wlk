import datos_ruido.*
import datos_comunas.*

object analizadorDeMuestras {
	
	// PUNTO 1
	method agregarUnaMuestra(muestra, muestras) {
		muestras.add(muestras)
	}
	method sacarUnaMuestra(muestra, muestras) {
		muestras.remove(muestras)
	}
	method cantidadDeMuestras(muestras) {
		return muestras.size()	
	}
	// PUNTO 2
	method numeroDeComunaMasRuidosa(muestras) {
		var comuna = 0;
		var dbMaximo = 0;
		muestras.forEach({muestra =>
			if (muestra.db() > dbMaximo) {
				dbMaximo = muestra.db()
				comuna = muestra.comuna();
			}
		})
		return comuna
	}
	method numeroDeComunaMasRuidosa2(muestras) {
		const ordenadasPorRuido = muestras.sortedBy {m1, m2 => m1.db() > m2.db() }
		const masRuidosa = ordenadasPorRuido.first()
		return masRuidosa.comuna()
	}
	// PUNTO 3
	method numerosDeComunasSilenciosas(muestras) {
		const muestrasSilenciosas = muestras.filter {m => m.db() < 50 }
		const numerosDeComunasSilenciosas = muestrasSilenciosas.map {m => m.comuna()}
		return numerosDeComunasSilenciosas.asSet()
	}
	// PUNTO 4
}
