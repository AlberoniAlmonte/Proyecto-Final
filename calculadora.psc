Algoritmo Calculadora
	fleteus = 2.31;
	combustible_us = 0.55;
	seguro_manejo = 0.30;
	peakseason_otros_us = 0.10;
	descuento = 0;
	tasa_cambio_us = 58.50;
	serviciopobi_rd = 190.71
	tasa_aeropuertuaria_rd = 3.51;
	tasa_dga_rd = 6.63;
	valorinicial = 0; 
	Mientras valorinicial <> 1 Hacer
		Escribir  "Integrantes del grupo:";
		Escribir "";
		Escribir "Alberoni Emilio Almonte Navarro";
		Escribir "Matrícula: 19-MIIT-1-016";
		Escribir "Ashley Santiago";
		Escribir "19-SIIN-1-067";
		Escribir "José Eduardo Ortega López";
		Escribir "19-SIIT-1-077";
		Escribir "";
		Escribir "CALCULADORA";
		Escribir  "|||||||||Advertencia||||||||||||";
		Escribir  "En caso de ingresar valores decimales, poner un punto (.) para separar el valor.";
		Escribir "Ingresar peso de la mercancía en Lbs: ";
		Leer mercancia_lbs;
		Escribir "";
		Escribir "Ingresar valor FOB de la mercancía en US$: ";
		Leer mercancia_usd;
		resul_flete = fleteus * mercancia_lbs;
		resul_combustibleus = combustible_us * mercancia_lbs;
		Si mercancia_usd < 100 Entonces
			resul_seguro_manejo = seguro_manejo + (mercancia_lbs * 0.30) - 0.30;
		SiNo
			resul_seguro_manejo = 1.30 + ((mercancia_usd - 100) * 0.01)
		FinSi
		resul_peakseason = peakseason_otros_us + (mercancia_lbs * 0.10) - 0.10;
		Si mercancia_lbs >= 30 Entonces
			descuento = 19.80 + ((mercancia_lbs - 30) * 0.66)
		SiNo
			Si mercancia_lbs >= 20 Entonces
				descuento = 10.20 + ((mercancia_lbs - 20) * 0.51)
			SiNo
				Si mercancia_lbs >= 10 Entonces
					descuento = 2.10 + ((mercancia_lbs - 10) * 0.21)
				SiNo
					Si mercancia_lbs >= 5 Entonces
						descuento = 0.55 + ((mercancia_lbs - 5) * 0.11)
					SiNo
						descuento = 0
					FinSi
				Fin Si
			Fin Si
		Fin Si
		
		Si mercancia_usd < 100 Entonces
			serviciopobi_us = 3.26;
			Si mercancia_lbs >= 30 Entonces
				serviciopobi_us = 78.0 + ((mercancia_lbs - 30) * 2.60)
			SiNo
				Si mercancia_lbs >= 20 Entonces
					serviciopobi_us = 55.0 + ((mercancia_lbs - 20) * 2.75)
				SiNo
					Si mercancia_lbs >= 10 Entonces
						serviciopobi_us = 30.50 + ((mercancia_lbs - 10) * 3.05)
					SiNo
						Si mercancia_lbs >= 5 Entonces
							serviciopobi_us = 15.75 + ((mercancia_lbs - 5) * 3.15)
						SiNo
							serviciopobi_us = serviciopobi_us + ((mercancia_lbs * 3.26) - 3.26)
						FinSi
					FinSi
				FinSi
			FinSi
		SiNo
			serviciopobi_us = 4.26 + ((mercancia_usd -100) * 0.01)
		FinSi
	

		Si mercancia_lbs >= 30 Entonces
			serviciopobi_rd = 4563.0 + ((mercancia_lbs - 30) * 152.10)
		SiNo
			Si mercancia_lbs >= 20 Entonces
				serviciopobi_rd = 3217.50 + ((mercancia_lbs - 20) * 160.88)
			SiNo
				Si mercancia_lbs >= 10 Entonces
					serviciopobi_rd = 1784.25 + ((mercancia_lbs - 10) * 178.42)
				SiNo
					Si mercancia_lbs >= 5 Entonces
						serviciopobi_rd = 921.38 + ((mercancia_lbs - 5) * 184.27)
					SiNo
						serviciopobi_rd = 190.71 * mercancia_lbs
					FinSi
				FinSi
			FinSi
		FinSi
	
		itbis_rd = serviciopobi_rd * 0.18;
		resul_tasa_aeropuertuaria = mercancia_lbs * tasa_aeropuertuaria_rd;
		resul_tasa_dga = mercancia_lbs * tasa_dga_rd;
		neto_a_pagar = serviciopobi_rd + itbis_rd + resul_tasa_aeropuertuaria + resul_tasa_dga;
		Escribir "Flete US$: ",resul_flete;
		Escribir "Combustible US$: ",resul_combustibleus;
		Escribir "Seguro & Manejo US$: ",resul_seguro_manejo;
		Escribir "Peak Season / Otros US$: ",resul_peakseason;
		Escribir "Descuento: ",descuento;
		Escribir "Servicio POBI US$: ",serviciopobi_us;
		Escribir "Tasa de cambio US$: ",tasa_cambio_us;
		Escribir "Servicios POBI RD$: ",serviciopobi_rd;
		Escribir "ITBIS RD$: ",itbis_rd;
		Escribir "Tasa Aeropuertuaria RD$: ",resul_tasa_aeropuertuaria;
		Escribir "Tasa DGA RD$: ",resul_tasa_dga;
		Escribir "Neto a pagar: ",neto_a_pagar;
		Escribir "Ingrese 1 para salir o 2 si desea calcular otro valor";
		Leer valorinicial;
		Limpiar Pantalla;
	Fin Mientras
FinAlgoritmo