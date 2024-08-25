//Este modulo compara si el numero binario es mayor o menor a 9

module comparator (

    input logic [3 : 0] binary_code,     
    output logic comparation
 
);
    //1. Comprobar si el binario es mayor o menor a 1001 (9) 
    //0 -> <9 y 1 -> >9
     assign comparation = binary_code[3] & (binary_code[2] | binary_code[1]);
     
endmodule