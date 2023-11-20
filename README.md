# eX_Calci- Digital Expense Calculator
## Team Details
<details>
  <summary>Detail</summary>

  > Semester: 3rd Sem B. Tech. CSE

  > Section: S1/S2

  > Member-1: **Chirag S**, 221CS214, chirags.221cs214@nitk.edu.in

  > Member-2: **N Nagabhushanam**, 221CS231, nnagabhushanam.221cs231@nitk.edu.in

  > Member-3: **N Yaswanth**, 221CS232, namburiyaswanth.221cs232@nitk.edu.in
</details>

## Abstract
<details>
  <summary>Detail</summary>

  > This project's goal is to develop an expense calculator utilizing the concepts of digital systems. It combines hardware and software elements to produce an integrated system that can calculate expenses effectively. This project offers a chance to apply theoretical knowledge to a real-world situation in the field of digital systems, producing a useful and approachable expense calculator. This system puts forward an innovative solution to the user by keeping them conscious of the ongoing expenses through various mediums. Our motivation for this project includes:
  >
  > 1. **Budget Tracking:** An expense calculator helps users and businesses monitor spending patterns, making it easier to stick to a budget.
  > 2. **Financial Planning:** Users can forecast future expenses based on past data, aiding in long-term financial planning and decision making.
  > 3. **Expense Categorization:** The calculator categorizes expenses, providing insights into where money is being allocated, which is crucial for optimizing finances.
  >
  > As a team, we aim to contribute to the way of life of every individual in the management of finance, capital, investments, and future consciousness about one's expenditure. Our expense calculator offers a comprehensive categorization system, allowing you to classify expenses with precision and even customize categories to suit your unique spending patterns, providing a more tailored financial management experience. 
  >
  > Unique colored LEDs are being used to provide a visual understanding of expenses. Audio warnings ensure that you prioritize your savings, making life way smoother. 
  >
  > The digital expense calculator system is a user-friendly tool designed to help individuals manage their expenses efficiently while staying within their defined budget. This system seamlessly integrates user input, a 7-segment display, and various control modules to provide real-time information about expenses and budget status.
</details>

## Working
<details>
  <summary>Detail</summary>

## Functional Table
<details>
  <summary>Table</summary>

  > This table represents one iteration of input to be given into the system.

| Category | INPUT | Cumulative | Green LED | Yellow LED | Red LED |
| -------- | ----- | ---------- | --------- | ---------- | ------- |
| D        | 5000  | 0000       | 1         | 0          | 0       |
| A        | 2000  | 2000       | 1         | 0          | 0       |
| B        | 1000  | 3000       | 1         | 0          | 0       |
| A        | 1500  | 4500       | 1         | 0          | 0       |
| B        | 100   | 4600       | 0         | 1          | 0       |
| A        | 390   | 4990       | 0         | 1          | 0       |
| B        | 100   | 5090       | 0         | 0          | 1       |
| B        | 2000  | 7090       | 0         | 0          | 1       |
</details>


## Flow of Execution

![Design-S2-T7-flow chart.png](https://github.com/Nagabhushanam2005/eX_Calci/blob/main/Snapshots/Design-S2-T7-flow%20chart.jpg)

</details>

## Logisim Circuit Diagram
<details>

![logisim_circuit.png](https://github.com/Nagabhushanam2005/eX_Calci/blob/main/Snapshots/logisim_circuit.png)

https://github.com/Nagabhushanam2005/eX_Calci/assets/122552163/3275cc99-1ac2-42b3-a521-e5909de64531

[![Logisim Simulation]()](https://github.com/Nagabhushanam2005/eX_Calci/blob/main/Videos/Logisim%20simu.mp4)





</details>

## Hardware Implementation
<details>
https://github.com/Nagabhushanam2005/eX_Calci/assets/122552163/19a717a9-4854-4638-bff1-22b2db002038

[![Hardware Output]()](https://github.com/Nagabhushanam2005/eX_Calci/blob/main/Videos/Hardware.mp4)
</details>

## Verilog Code
<details>
  <summary>Detail</summary>
```

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


## Verilog Output
![Verilog output](https://github.com/Nagabhushanam2005/eX_Calci/blob/main/Snapshots/verilog-output.png)

</details>




## References
1. [Implementation of Verilog HDL Calculator (PDF)](https://ir.unimas.my/id/eprint/33604/1/Implementation%20of%20Verilog%20HDL%2n%20Calculator.pdf)
2. [Play with 16x2 LCD Display](https://circuit4us.medium.com/play-with-16x2-lcd-display-ca70a047af36)
3. [3-Wire Serial LCD using a Shift Register](https://www.electronics-lab.com/project/3-wire-serial-lcd-using-a-shift-register)
4. [Budget Calculator](https://www.calculator.net/budget-calculator.html)
5. [Correct Way to Drive an LED using 74HCxx Logic](https://electronics.stackexchange.com/questions/376598/correct-way-to-drive-an-ledusing-74hcxx-logic)
