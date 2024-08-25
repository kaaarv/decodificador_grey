//Este módulo interconecta los tres sub módulos 

module module_top (

    input logic [3 : 0] gray_code,       //Entrada: codigo Gray
    input logic show_decades,            //Entrada: boton de decenas o unidades
    output logic [6 : 0] display_code   //Salida: codigo al display
);

    logic [3 : 0] binary_code;      //Almacena temporalmente el codigo binario
    logic [3 : 0] units_code;       //Almacena las unidades temporalmente
    logic [3 : 0] selected_code;    //Guarda el codigo a entregar en el module_display
    logic show_units;               //Almacena 0 si <9 o 1 si >9

    gray_decoder u_gray_decoder (
        .gray(gray_code),           //Se recibe el código Gray y se envía a gray_decoder.sv
        .binary(binary_code)        //Recoge el codigo binario ya convertido y lo almacena
    );

    module_units u_module_units(
        .binary_code(binary_code),  //Envia el binario para separar unidades
        .binary_units(units_code)   //Almacena las unidades extraides
    );

    module_comparator u_module_comparator(
        .binary_code(binary_code),      //Le envia la señal en binario al module_display
        .y(show_units)                  //Indica si n<9 o n>9
    );

    //mux que va con el comparador (escoje que binario pasa al module display)
    assign selected_code = (show_units) ? units_code : binary_code;

    module_display u_module_display(
        .binary_code(selected_code),
        .display_code(display_code)
    );
    //mux que selecciona si se muestran las unidades o las decenas 
endmodule