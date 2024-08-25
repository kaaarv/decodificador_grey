//Este módulo interconecta los tres sub módulos 

module top (

    input logic [3 : 0] gray_code,       //Entrada: codigo Gray
    input logic show_decades,            //Entrada: boton de decenas o unidades
    output logic [6 : 0] display_code   //Salida: codigo al display
);

    logic [3 : 0] binary_code;      //Almacena temporalmente el codigo binario
    logic [3 : 0] units_code;       //Almacena las unidades temporalmente
    logic [3 : 0] decades_code;        //Almacena las decenas temporalmente
    logic [3 : 0] selected_code;    //Guarda el codigo a entregar en el module_display
    logic show_units;               //Almacena 0 si <9 o 1 si >9

    gray_decoder u_gray_decoder (
        .gray(gray_code),           //Se recibe el código Gray y se envía a gray_decoder.sv
        .binary(binary_code)        //Recoge el codigo binario ya convertido y lo almacena
    );

    units u_module_units(
        .binary_code(binary_code),  //Envia el binario para separar unidades
        .binary_units(units_code)   //Almacena las unidades extraides
    );

    comparator u_module_comparator(
        .binary_code(binary_code),      //Le envia la señal en binario al module_display
        .y(show_units)                  //Indica si n<9 o n>9
    );

    //mux que va con el comparador (escoje que binario pasa al module display)
    assign decades_code = (show_units) ? 4'b0001 : 4'b0000; //Vale 1 si show_units == 1 y 0 si show_units == 0
    assign selected_code = (show_decades) ? decades_code : (show_units ? units_code : binary_code); //Determina el codigo a enviar

    display u_module_display(
        .binary_code(selected_code),
        .display_code(display_code)
    );
endmodule