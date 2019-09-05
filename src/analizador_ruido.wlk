import datos_ruido.*
import datos_comunas.*

object analizadorDeMuestras {
	
	// PUNTO 1
	method agregarUnaMuestra(muestra, muestras) {
		muestras.add(muestra)
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
	method tieneUnaMuestraRuidosa(numeroDeComuna, muestras) {
		const muestrasDeLaComuna = muestras.filter({m => m.comuna() == numeroDeComuna})
		return muestrasDeLaComuna.any({m => m.db() > 90})
	}
	// PUNTO 5
	method comunasConTodasMuestrasRuidosas(muestras) {
		const nrosComunas = muestras.map({m => m.comuna()}).asSet()
		const tabla = nrosComunas.map({nro =>
			const muestrasDeLaComuna = muestras.filter {m => m.comuna() == nro}
			return [nro, muestrasDeLaComuna]
		})
		return tabla.filter({fila =>
			const muestrasDeLaComuna = fila.get(1)
			return muestrasDeLaComuna.all {m => m.db() > 90}
		}).map { fila => fila.get(0) }
	}
	// PUNTO 6
	method obtenerMuestraDeComunaDeUnBarrio(barrio, muestras, comunas) {
		const comuna = comunas.find({ c => 
			return c.barrios().some { b => b == barrio }
		})
		return muestras.find { m => m.comuna() == comuna.numero() }
	}
	// PUNTO 7
	method obtenerMuestrasDeComunaDeUnBarrio(barrio, muestras, comunas) {
		const comuna = comunas.find({ c => 
			return c.barrios().any { b => b == barrio }
		})
		return muestras.filter { m => m.comuna() == comuna.numero() }
	}
	// PUNTO 8
	method generarTabla(muestras, comunas) {
		const nrosComunas = muestras.map({m => m.comuna()}).asSet()
		
		const tabla = nrosComunas.map({nro => 
			const unBarrio = comunas.find({ c => c.numero() == nro }).barrios().first();
			const muestrasComuna = self.obtenerMuestrasDeComunaDeUnBarrio(unBarrio, muestras, comunas)
			const decibeles = muestrasComuna.map { m => m.db() }
			const maximo = decibeles.max()
			const minimo = decibeles.min()
			const promedio = decibeles.sum() / decibeles.size()
			const barrios = comunas.find({ c => c.numero() == nro }).barrios()
			return [nro, barrios, minimo, maximo, promedio]
		}).sortedBy({a, b => a.get(4) > b.get(4)})
		return tabla
	}
}
