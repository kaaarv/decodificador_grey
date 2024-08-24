//Este módulo interconecta los tres sub módulos 

module module_main (

    input logic [3 : 0] gray_code,      //Entrada: codigo Gray
    output logic [6 : 0] display_code   //Salida: codigo al display
    output logic y //Salida: Almacena la informacion sobre las decenas
);

    logic [3 : 0] binary_code;  //Almacena temporalmente el codigo binario

    gray_decoder u_gray_decoder (
        .gray(gray_code),           //Se recibe el código Gray y se envía a gray_decoder.sv
        .binary(binary_code)        //Recoge el cdogio binario ya convertido y lo almacena
    );

    comparator u_comparator(
        .binary_code(binary_code),      //Le envia la señal en binario al module_display
        .display_code(y)      //Recibe el codigo para controlar el display.
        //Ademas, y indica si se muestra 1 o 0 en las decenas
    );

    //mux que va con el comparador (escoje que binario pasa al module display)

    //mux que selecciona si se muestran las unidades o las decenas 
endmodule