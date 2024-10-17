Proceso ProyectoN1
	
	//Saludos,Ofrecer, precio original.
	
	definir PRECIO_ORIGINAL Como Real;
	PRECIO_ORIGINAL<- 20000;
	definir CUPON_DESCUENTO Como Real;
	CUPON_DESCUENTO<-0.10;
	definir IVA Como Real;
	IVA<-1.19;
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
		Escribir "Tu precio con descuento sería: ",aux_descuento;
		Definir precio_despues_iva Como Real;
		precio_despues_iva<-aux_descuento* (IVA);
		Escribir " El valor con impuesto inlcuido es: ", precio_despues_iva;
	SiNo
		
		si op1=2 Entonces
			Escribir "Tu Precio sin descuento es: ", precio_original;
			Definir precio_despues_iva Como Real;
			precio_despues_iva<-precio_original*IVA;
			Escribir "Tu precio con impuestos es: ", precio_despues_iva;
		FinSi
	
	FinSi
	
	
	precio_con_descuento<- precio_original - (cupon_descuento);
	Escribir "¿Cuántos deseas llevar?";
	definir cantidad Como Entero;
	Leer cantidad;
	si cantidad > 1 Entonces
		descuento_cantidad<- (precio_despues_iva-(precio_despues_iva * descuento_cantidad));
		Escribir "El descuento por comprar mas de 1 unidad es de: ", descuento_cantidad;
	SiNo
		descuento_cantidad<- (precio_despues_iva);
		Escribir "El precio por la compra de 1 unidad es: ",descuento_cantidad;
	FinSi
	
	// costos de envío
	
	Definir COSTO_ENVIO Como Real;
	COSTO_ENVIO<-1000;
	Definir peso_kg Como Real;
	peso_kg<-0;
	Definir VALORX3KG Como Real;
	VALORX3KG<-200;
	Escribir "Ingrese el Peso en KG del producto: ";
	Leer peso_kg;
	Definir valor_total_envio Como Real;
	valor_total_envio<-(COSTO_ENVIO + trunc(peso_kg/3 * 200));
	Escribir "El costo total del envío es: ", valor_total_envio;
	
	// Costo FinAlgoritmo
	
	Definir Total_a_pagar Como Real;
	Total_a_pagar<-descuento_cantidad + (valor_total_envio);
	Escribir "El Total a pagar con envío es de: ", Total_a_pagar;
	
	
	FinProceso
