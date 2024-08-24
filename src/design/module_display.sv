//Este modulo controla los datos enviados a los puertos del display

module display #(

    input logic [3 : 0] binary_code,      //Entrada: Codigo en binario
    output logic [6 : 0] display_code     //Salida: Codigo para el display
);

    //Segmento A:
    assign display_code[0] = ~((~binary_code[3] & ~binary_code[2] & ~binary_code[1] &  binary_code[0]) |
                              (~binary_code[3] &  binary_code[2] & ~binary_code[1] & ~binary_code[0]) |
                              ( binary_code[3] & ~binary_code[2] &  binary_code[1] &  binary_code[0]) |
                              ( binary_code[3] &  binary_code[2] & ~binary_code[1] &  binary_code[0]));

    //Segmento B:
    assign display_code[1] = ~((~binary_code[3] &  binary_code[2] & ~binary_code[1] &  binary_code[0]) | 
                              ( binary_code[3] &  binary_code[1] &  binary_code[0]) |
                              ( binary_code[2] &  binary_code[1] & ~binary_code[0]) |
                              ( binary_code[3] &  binary_code[2] & ~binary_code[0]));

    //Segmento C:
    assign display_code[2] = ~((~binary_code[3] & ~binary_code[2] &  binary_code[1] & ~binary_code[0]) | 
                              ( binary_code[3] &  binary_code[2] &  binary_code[1]) |
                              ( binary_code[3] &  binary_code[2] & ~binary_code[0]));

    //Segmento D:
    assign display_code[3] = ~((~binary_code[3] & ~binary_code[2] & ~binary_code[1] &  binary_code[0]) | 
                              (~binary_code[3] &  binary_code[2] & ~binary_code[1] & ~binary_code[0]) |
                              ( binary_code[2] &  binary_code[1] &  binary_code[0]) |
                              ( binary_code[3] & ~binary_code[2] &  binary_code[1] & ~binary_code[0]));

    //Segmento E:
    assign display_code[4] = ~((~binary_code[3] &  binary_code[0]) | 
                              (~binary_code[3] &  binary_code[2] & ~binary_code[1]) |
                              (~binary_code[2] & ~binary_code[1] &  binary_code[0]));

    //Segmento F:
    assign display_code[5] = ~((~binary_code[3] & ~binary_code[2] &  binary_code[0]) | 
                              (~binary_code[3] & ~binary_code[2] &  binary_code[1]) |
                              (~binary_code[3] &  binary_code[1] &  binary_code[0]) |
                              ( binary_code[3] &  binary_code[2] & ~binary_code[1] &  binary_code[0]));

    //Segmento G:
    assign display_code[6] = ~((~binary_code[3] & ~binary_code[2] & ~binary_code[1]) |
                              ( binary_code[3] &  binary_code[2] & ~binary_code[1] & ~binary_code[0]) |
                              (~binary_code[3] &  binary_code[2] &  binary_code[1] &  binary_code[0]));
endmodule

