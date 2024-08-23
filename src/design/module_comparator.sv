//Este modulo controla los datos enviados a los puertos del display

module comparator #(

    input logic [3 : 0] binary_code,     
    output logic y
 
);
//1. Comprobar si el binario es mayor o menor a 1001 (9) 
 assign y = binary_code[3] & (binary_code[2] | binary_code[1]);


endmodule