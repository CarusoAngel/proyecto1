Proceso ProyectoN1
	
	//Saludos,Ofrecer, precio original.
	
	definir PRECIO_ORIGINAL Como Real;
	PRECIO_ORIGINAL<- 100;
	definir CUPON_DESCUENTO Como Real;
	CUPON_DESCUENTO<-0.10;
	definir IVA Como Real;
	IVA<-1.12;
	Definir descuento_cantidad Como Real;
	descuento_cantidad<-0.05;
	
	escribir "Buenas tardes, qué deseas comprar?";
	definir nombre_producto Como Caracter;
	leer nombre_producto;
	Escribir "Muy bien, el valor del producto es de $ ", PRECIO_ORIGINAL;
	
	// hora de los descuentos
	
	definir precio_con_descuento Como Real;
	Escribir "Tienes algún cúpon de descuento?";
	Escribir "1=Si";
	Escribir "2=No";
	Definir op1 Como Entero;
	
	Leer op1;
	
	// Condiciones
	
	
	Si op1 =1 Entonces
		precio_con_descuento <- precio_original * (CUPON_DESCUENTO);
		Definir aux_descuento Como Real;
		aux_descuento<-precio_original-precio_con_descuento;
		Escribir "TU PRECIO CON DESCUENTO SERÍA ",aux_descuento;
		Definir precio_despues_iva Como Real;
		precio_despues_iva<-aux_descuento* (IVA);
		Escribir " El valor con impuesto inlcuido es: ", precio_despues_iva;
	SiNo
		
		si op1=2 Entonces
			CUPON_DESCUENTO<-0;
			Escribir "Tu Precio sin descuento es: ", precio_original;
			Definir precio_despues_iva Como Real;
			precio_despues_iva<-precio_original*IVA;
			Escribir "Tu precio con impuestos es: ", precio_despues_iva;
		FinSi
	
	FinSi
	
	
	Escribir "¿Cuántos deseas llevar?";
	Definir cantidad Como Entero;
	Definir descuento_producto Como Real;
	Definir total_sin_iva Como Real;
	Definir total_con_iva Como Real;
	
	Leer cantidad;
	si cantidad < 2 Entonces
		descuento_producto<-precio_original*CUPON_DESCUENTO;
		total_sin_iva<-1 * (precio_original - descuento_producto);
		total_con_iva<-total_sin_iva * IVA;
		Escribir "El TOTAL POR LA COMPRA DE 1 UNIDAD CON IMPUESTOS ES DE : ", total_con_iva;
	SiNo
		descuento_producto<-precio_original*CUPON_DESCUENTO;
		total_sin_iva<-1 * (precio_original - descuento_producto);
		total_con_iva<-total_sin_iva * IVA;
		Definir descuento_dos Como Real;
		descuento_dos<-0.95;
		Definir nuevo_precio_iva Como Real;
		nuevo_precio_iva<-total_con_iva * descuento_dos;
		total_con_iva<-nuevo_precio_iva*cantidad;
		Escribir "El NUEVO PRECIO POR LA COMPRA DE MAS DE UNA PAR DE ZAPATOS ES DE : ", nuevo_precio_iva;
		Escribir "EL COSTO TOTAL POR LA CANTIDAD DE PARES DE ZAPATOS MAS IVA ES DE : ", total_con_iva;
	FinSi
	
	// costos de envío
	
	Definir COSTO_ENVIO Como Real;
	COSTO_ENVIO<-10;
	Definir peso_kg Como Real;
	peso_kg<-3;
	Escribir "INGRESE EL PESO DEL PRODUCTO EN KG PARA GESTIONAR EL ENVÍO: ";
	Leer peso_kg;
	Definir valor_total_envio Como Real;
	valor_total_envio<-(COSTO_ENVIO + (peso_kg * 2));
	Escribir "EL COSTO DEL ENVÍO POR LA CANTIDAD DE KG ES: ", trunc(valor_total_envio);
	
	// Costo FinAlgoritmo
	
	Definir Total_a_pagar Como Real;
	Total_a_pagar<-total_con_iva + (valor_total_envio);
	Escribir "El TOTAL DE LA COMPRA CON ENVÍO ES: ", Total_a_pagar;
	Escribir " ";
	Escribir "---------------------------------------------------";
	Escribir "DETALLE FACTURA : ";
	Escribir  "PRECIO UNIDAD :", precio_original;
	SI op1=1 Entonces
		Escribir"CUPON DE DESCUENTO : ", CUPON_DESCUENTO * 100, "%";
		Escribir "TU PRECIO CON DESCUENTO SERÍA ",aux_descuento;
	FinSi
	Escribir "IMPUESTOS (IVA) : 12 % ";
	Si cantidad <2
		Entonces
		Escribir "DESCUENTO POR CANTIDAD : 0 ";
	SiNo
		Escribir  "DESCUENTO POR CANTIDAD : 5 %";
	FinSi
	Escribir "COSTO TOTAL POR LOS PRODUCTOS :", total_con_iva;
	Escribir "COSTO TOTAL POR ENVIO :", trunc(valor_total_envio);
	Escribir "TOTAL A PAGAR POR LA COMPRA :", total_con_iva + trunc(valor_total_envio);
	
FinAlgoritmo
