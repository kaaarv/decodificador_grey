# Primer proyecto de Diseño Lógico | Informe
Este es un proyecto de diseño que consiste en un decodificador de código Gray a código binario. Además, la finalidad es que el código decodificado sea representado mediante cuatro LEDs y también mediante un display de 7 segmentos, las señales de entrada al decodificador se establecen por medio de un switch y son procesadas por lógica booleana que se encuentra guardada dentro de la FPGA.
## Integrantes
Elizondo Espinoza Juan Pablo

Quiros Avila Karina

Tencio Solano Jose Eduardo
## Descripción de funcionamiento 
Se trata de un circuito decodificador que recibe una señal de 4 bits por medio de un DIP switch, la señal de 4 bits es recibida por la FPGA la cual tiene todo el código en HDL que se encarga de decodificarlo utilizando álgebra booleana para que sea correctamente representado de las dos formas diferentes en las que se necesita; en el caso del display de 7 segmentos, se hace una codificación adicional para poder mostrar los valores numéricos en sistema decimal adecuadamente y se cuenta con otra entrada adicional que permite seleccionar si lo que se muestra en el display son las unidades o las decenas del número (en caso de que las tenga), al mismo tiempo que las luces LED muestran el código decodificado pero en sistema binario considerando que son cuatro luces LED (una para cada bit del número ingresado en Gray). 

El proyecto cuenta con varios modulos dentro de la carpeta de diseño, los cuales contribuyen al funcionamiento de los tres subsistemas principales en los que se conforma el proyecto, los mismos se detallas a continuación. 

### Subsistema de lectura y decodificación de código Gray
Este subsistema tiene como entrada principal el dato de 4 bits que está en código Gray, su función es leer dicho código y por medio del álgebra booleana que se encuentra en el módulo gray_decoder.sv dentro de la carpeta de design, convertirlo en código binario para luego enviarle el código ya decodificado a los otros dos subsistemas, los cuales trabajarán a partir de dicho código. 

![image](https://github.com/user-attachments/assets/5ca12e40-db1a-4f0a-805d-d20de945f2b5)

### Subsistema de código ingresado mostrado en luces LED
El subsistema encargado de mostrar el dato en binario en las luces LED es este. Recibe el código ya convertido a binario por el primer subsistema, lo adapta a un dato de 6 bits considerando que la FPGA utilizada cuenta con 6 LEDs, para que de esta forma los últimos dos estén apagados y los primeros cuatro dependan del código que reciba el subsistema. El procedimiento se encuentra en el módulo gray_to_leds.sv dentro de la carpeta de design.

![image](https://github.com/user-attachments/assets/e030a7a2-b683-4dfb-a75a-fab6f3fa4b2a)


### Subsistema de código ingresado desplegado en el display de 7 segmentos
Este es el subsistema que requiere de una mayor cantidad de módulos dentro de la carpeta de design, debido a su naturaleza y con la intensión de que funcione de la mejor manera posible. El subsistema debe de recibir el código en binario que decodificó el primer subsistema, luego separa las unidades del número ingresado (esto lo hace independientemente de si el número lo requiere o no), debe de verificar si el código en binario representa un número de más de dos cifras en el sistema decimal para luego tomar la desición de si utilizar el dato completo que recibió o bien si utiliza las unidades que ya separó; además, considerando que solo se trabajará con números del 0 al 15 en el sisteam decimal, las decenas de los números siempre van a ser 1 en caso de que las tengan y si no las tienen se le asigna un 0 al valor de las decenas del número, esto se logra utilizando una variable a la cual se le asigna su valor por medio de un Mux, el subsistema también debe de considerar si se le está ordenando que muestre únicamente las unidades del número o bien las decenas. 

Todo lo anteriormente mencionado se hace gracias al trabajo en conjunto de tres módulos dentro de la carpeta de desing: module_display.sv, module_comparator.sv y module_units.sv.

El module_display.sv es el que se encarga de convertir el dato en un código de de 7 bits con el que se encienden los segmentos necesarios del display (todo mediante álgebra booleana), el module_comparator.sv se encarga de verificar si el código en binario que el primer submodulo envió es mayor o menor a 9 para de esta forma ver si cuenta o no con decenas y el module_units.sv es el que agarra el código en binario recibido y le separa sus unidades. 

![image](https://github.com/user-attachments/assets/461dbcf2-9d77-42d1-90f3-46ad549cacf6)


![image](https://github.com/user-attachments/assets/ee0e9b61-a821-45c4-b9aa-f2f9974db836)

![image](https://github.com/user-attachments/assets/2fa68a71-e467-43e5-be0e-06e8e309decc)

### Módulo module_top.sv
Este es el módulo principal que conecta y maneja a los demás módulos dentro de la carpeta de design. El módulo recibe la señal directa que se envía por medio del DIP switch, así como la señal para controlar si se van a mostrar las decenas o las unidades por medio de un botón, seguidamente le envía el código recibido en Gray al decodificador gray_decoder.sv y almacena el dato devuelto en una variable lógica de 4 bits llamada binary_code.

Luego, binary_code es enviada a grat_to_leds.sv para que este módulo devuelva una variable de 6 bits llamada leds, la cual será utilizada para controlar a los 6 LEDs que contiene la FPGA. 

Al mismo tiempo, binary_code se envía al module_comparator.sv y module_units.sv para que se separen las unidades y se compruebe si el dato es mayor a 9 en una representación decimal, recibiendo show_units e units_code respectivamente. Luego, por medio de dos multiplexores, se verifica si en ese momento se desea mostrar las unidades o las decenas del número (si el botón está precionado o no), así como determinar qué código será el que se le enviará al display_code.sv para su codificación en un código adecuado para el display de 7 segmentos.

![image](https://github.com/user-attachments/assets/66190b61-d27a-4bca-a06d-ef0928372ffb)

Finalmente, el código que se seleccione y se almacene en selected_code es enviado a module_display.sv y este módulo entrega como resultado el código para controlar el display, que lleva por nombre display_code.

## Diagramas de bloques

## Ejemplo de simplificación de ecuaciones booleanas

## Ejemplo y análisis de una simulación funcional
!(imagenes/graybinary.png)


## Análisis del consumo de recursos

## Análisis de los problemas encontrados durante el desarrollo del proyecto









