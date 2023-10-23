
module Accumulator(
    input wire [15:0]a,
    input wire [15:0]b,
    output wire [15:0]sum,
    output wire cout
    );
    assign {cout,sum} = a + b;
endmodule
module AcceptExpense (
    input [15:0]bin_a,
    input [15:0]prev_accum_a,

    output [15:0]accum_a
);
    wire y;
    Accumulator accum(
        .a(bin_a),
        .b(prev_accum_a),
        .sum(accum_a),
        .cout(y)
    );
    
endmodule

module bcd_comparator_16bit(
    input wire [15:0]a,
    input wire [15:0]b,
    output wire equal,
    output wire a_greater,
    output wire b_greater
);
//compartor
wire x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
assign x0= ~(a[0] ^ b[0]);
assign x1= ~(a[1] ^ b[1]);
assign x2= ~(a[2] ^ b[2]);
assign x3= ~(a[3] ^ b[3]); 
assign x4= ~(a[4] ^ b[4]);
assign x5= ~(a[5] ^ b[5]);
assign x6= ~(a[6] ^ b[6]);
assign x7= ~(a[7] ^ b[7]);
assign x8= ~(a[8] ^ b[8]);
assign x9= ~(a[9] ^ b[9]);
assign x10= ~(a[10] ^ b[10]);
assign x11= ~(a[11] ^ b[11]);
assign x12= ~(a[12] ^ b[12]);
assign x13= ~(a[13] ^ b[13]);
assign x14= ~(a[14] ^ b[14]);
assign x15= ~(a[15] ^ b[15]);
//logic comparator

assign equal=(x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & x3 & x2 & x1 & x0);
assign a_greater=((a[15] & ~b[15]) | (x15 & a[14] & ~b[14]) | (x15 & x14 & a[13] & ~b[13]) | (x15 & x14 & x13 & a[12] & ~b[12]) | (x15 & x14 & x13 & x12 & a[11] & ~b[11]) | (x15 & x14 & x13 & x12 & x11 & a[10] & ~b[10]) | (x15 & x14 & x13 & x12 & x11 & x10 & a[9] & ~b[9]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & a[8] & ~b[8]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & a[7] & ~b[7]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & a[6] & ~b[6]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & a[5] & ~b[5]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & a[4] & ~b[4]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & a[3] & ~b[3]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & x3 & a[2] & ~b[2]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & x3 & x2 & a[1] & ~b[1]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & x3 & x2 & x1 &a[0]&~b[0]));
assign b_greater=((~a[15] & b[15]) | (x15 & ~a[14] & b[14]) | (x15 & x14 & ~a[13] & b[13]) | (x15 & x14 & x13 & ~a[12] & b[12]) | (x15 & x14 & x13 & x12 & ~a[11] & b[11]) | (x15 & x14 & x13 & x12 & x11 & ~a[10] & b[10]) | (x15 & x14 & x13 & x12 & x11 & x10 & ~a[9] & b[9]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & ~a[8] & b[8]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & ~a[7] & b[7]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & ~a[6] & b[6]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & ~a[5] & b[5]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & ~a[4] & b[4]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & ~a[3] & b[3]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & x3 & ~a[2] & b[2]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & x3 & x2 & ~a[1] & b[1]) | (x15 & x14 & x13 & x12 & x11 & x10 & x9 & x8 & x7 & x6 & x5 & x4 & x3 & x2 & x1 & ~a[0]&b[0]));

endmodule


module Executor(
    input [15:0] budget,
    input [15:0] ninebudget,
    input [15:0]a_expense,
    input [15:0]b_expense,
    input [15:0]prev_accum_a,
    input [15:0]prev_accum_b,
    output [15:0]accum_a,
    output [15:0]accum_b,
    output [15:0]cumulative,
    output [2:0] led_gyr
);
    

        wire i,o,p,o1,p1;
        AcceptExpense m6(a_expense,prev_accum_a,accum_a);
        AcceptExpense m7(b_expense,prev_accum_b,accum_b);
        Accumulator m8(accum_a,accum_b,cumulative,i);
        bcd_comparator_16bit m9(cumulative,ninebudget,o,ninty_comp,p);
        bcd_comparator_16bit m10(cumulative,budget,o1,budget_comp,p1);
        

        wire g,y,r;
        assign r=budget_comp;
        assign y=ninty_comp&(~r);
        assign g=~(y | r);
        assign led_gyr[0]=g;
        assign led_gyr[1]=y;
        assign led_gyr[2]=r;

    
endmodule

module mini_tb;

    reg [15:0] budget;
    reg [15:0] ninebudget;
    reg [15:0] a_expense;
    reg [15:0] b_expense;
    reg [15:0]prev_accum_a;
    reg [15:0]prev_accum_b;
    wire [15:0]accum_a;
    wire [15:0]accum_b;
    wire [15:0]cumulative;
    wire [2:0] led_gyr;
    Executor M1(budget,ninebudget,a_expense,b_expense,prev_accum_a,prev_accum_b,accum_a,accum_b,cumulative,led_gyr);
	
	initial 
	begin   
		$display("|   Budget  |  ninty percent budget |      Expense-A      |     Expense-B     |   Cumulative-A   |   Cumulative-B  |   Cumulative   | G | Y | R |");
		$display("|-----------------------------------------------------------------------------------------------------------------------------------------------|");

		prev_accum_a=16'd0;
        prev_accum_b=16'd0;
        budget=16'd5000;
        ninebudget=16'd4500;
        a_expense=16'd500;
        b_expense=16'd400;
        $monitor("| %d     |            %d      |       %d         |       %d       |       %d      |       %d     |       %d    | %b | %b | %b | ",budget,ninebudget,a_expense,b_expense,accum_a,accum_b,cumulative,led_gyr[0],led_gyr[1],led_gyr[2]);
		
       repeat(10)
       begin
            #10 a_expense=$urandom%500; b_expense=$urandom%500; prev_accum_a=accum_a+16'd0; prev_accum_b=accum_b+16'd0;
        
       end
        
    end
	
	initial #2390 $finish;


endmodule
