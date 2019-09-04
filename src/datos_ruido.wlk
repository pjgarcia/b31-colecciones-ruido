import utils.*

// limite_inferior_rango_db,limite_superior_rango_db,comuna,leyenda,rango_db,color,periodo
const datosCrudos = 
"30.0,35.0,1,35 dBA o menos,30-35,169 255 115,Diurno
0,40.0,1,35-40 dBA,35-40,76 230 0,Diurno
0,45.0,1,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,1,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,1,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,1,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,1,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,1,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,1,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,1,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,1,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,1,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,1,80 dBA o más,90-95,0 38 115,Diurno
0,35.0,2,35 dBA o menos,30-35,169 255 115,Diurno
0,40.0,2,35-40 dBA,35-40,76 230 0,Diurno
0,45.0,2,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,2,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,2,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,2,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,2,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,2,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,2,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,2,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,2,80 dBA o más,80-85,0 38 115,Diurno
0,60.0,3,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,3,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,3,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,3,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,3,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,3,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,3,80 dBA o más,85-90,0 38 115,Diurno
0,35.0,4,35 dBA o menos,30-35,169 255 115,Diurno
0,40.0,4,35-40 dBA,35-40,76 230 0,Diurno
0,45.0,4,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,4,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,4,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,4,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,4,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,4,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,4,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,4,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,4,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,4,80 dBA o más,85-90,0 38 115,Diurno
0,55.0,5,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,5,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,5,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,5,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,5,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,5,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,5,80 dBA o más,80-85,0 38 115,Diurno
0,55.0,6,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,6,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,6,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,6,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,6,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,6,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,6,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,6,80 dBA o más,85-90,0 38 115,Diurno
0,35.0,7,35 dBA o menos,30-35,169 255 115,Diurno
0,40.0,7,35-40 dBA,35-40,76 230 0,Diurno
0,45.0,7,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,7,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,7,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,7,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,7,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,7,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,7,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,7,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,7,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,7,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,7,80 dBA o más,90-95,0 38 115,Diurno
0,50.0,8,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,8,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,8,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,8,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,8,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,8,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,8,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,8,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,8,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,8,80 dBA o más,90-95,0 38 115,Diurno
0,45.0,9,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,9,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,9,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,9,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,9,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,9,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,9,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,9,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,9,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,9,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,9,80 dBA o más,90-95,0 38 115,Diurno
0,50.0,10,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,10,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,10,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,10,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,10,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,10,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,10,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,10,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,10,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,10,80 dBA o más,90-95,0 38 115,Diurno
0,50.0,10,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,10,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,10,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,10,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,10,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,10,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,10,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,10,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,10,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,10,80 dBA o más,90-95,0 38 115,Diurno
0,50.0,11,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,11,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,11,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,11,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,11,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,11,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,11,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,11,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,11,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,11,80 dBA o más,90-95,0 38 115,Diurno
0,40.0,12,35-40 dBA,35-40,76 230 0,Diurno
0,45.0,12,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,12,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,12,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,12,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,12,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,12,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,12,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,12,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,12,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,12,80 dBA o más,85-90,0 38 115,Diurno
0,40.0,13,35-40 dBA,35-40,76 230 0,Diurno
0,45.0,13,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,13,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,13,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,13,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,13,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,13,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,13,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,13,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,13,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,13,80 dBA o más,85-90,0 38 115,Diurno
0,50.0,14,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,14,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,14,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,14,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,14,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,14,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,14,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,14,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,14,80 dBA o más,85-90,0 38 115,Diurno
0,60.0,9,55-60 dBA,55-60,230 152 0,Diurno
0,35.0,15,35 dBA o menos,30-35,169 255 115,Diurno
0,40.0,15,35-40 dBA,35-40,76 230 0,Diurno
0,45.0,15,40-45 dBA,40-45,38 115 0,Diurno
0,50.0,15,45-50 dBA,45-50,255 255 0,Diurno
0,55.0,15,50-55 dBA,50-55,254 204 92,Diurno
0,60.0,15,55-60 dBA,55-60,230 152 0,Diurno
0,65.0,15,60-65 dBA,60-65,255 0 0,Diurno
0,70.0,15,65-70 dBA,65-70,115 0 0,Diurno
0,75.0,15,70-75 dBA,70-75,132 0 168,Diurno
0,80.0,15,75-80 dBA,75-80,0 38 255,Diurno
0,85.0,15,80 dBA o más,80-85,0 38 115,Diurno
0,90.0,15,80 dBA o más,85-90,0 38 115,Diurno
0,95.0,15,80 dBA o más,90-95,0 38 115,Diurno"

const registros = datosCrudos.split("\n")

const crearObjeto = {reg => object {
		method comuna() = reg.get(2)
		method rangoDB() = generarRango.apply(reg.get(4))
		method db() = mediaDeRango.apply(generarRango.apply(reg.get(4)))
	}
}

const muestras = registros.map({ r => r.split(",") })
						.map(crearObjeto)
