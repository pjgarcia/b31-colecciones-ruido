const generarRango = { s =>
	const partes = s.split("-")
	const inicio = stoi.apply(partes.get(0))
	const fin = stoi.apply(partes.get(1))
	return new Range(start = inicio, end = fin)
}

const mediaDeRango = { r =>
	const promedio = (r.max() + r.min()) / 2 
	return promedio.roundUp()
}

const ctoi = {c => 
	var total = 0;
	if (c == "1") total += 1
	if (c == "2") total += 2
	if (c == "3") total += 3
	if (c == "4") total += 4
	if (c == "5") total += 5
	if (c == "6") total += 6
	if (c == "7") total += 7
	if (c == "8") total += 8
	if (c == "9") total += 9
	return total;
}

const stoi = {string =>
	var total = 0
	
	string.length().times {i =>
		var ultimo = ctoi.apply(string.takeRight(i).takeLeft(1))
		var multiplicador = 10 ** (i - 1)
		total += ultimo * multiplicador
	}
	
	return total
}