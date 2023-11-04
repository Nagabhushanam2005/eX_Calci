# eX_Calci
#### 
#### Digital Expense Calculator

# Abstract

This project's goal is to develop an expense calculator utilizing the concepts of digital systems. It combines hardware and software elements to produce an integrated system that can calculate expenses effectively. This project offers a chance to apply theoretical knowledge to a real-world situation in the field of digital systems, producing a useful and approachable expense calculator. This system puts forward an innovative solution to the user by keeping them conscious of the ongoing expenses through various mediums. Our motivation for this project includes:

1. **Budget Tracking:** An expense calculator helps users and businesses monitor spending patterns, making it easier to stick to a budget.
2. **Financial Planning:** Users can forecast future expenses based on past data, aiding in long-term financial planning and decision making.
3. **Expense Categorization:** The calculator categorizes expenses, providing insights into where money is being allocated, which is crucial for optimizing finances.

As a team, we aim to contribute to the way of life of every individual in the management of finance, capital, investments, and future consciousness about one's expenditure. Our expense calculator offers a comprehensive categorization system, allowing you to classify expenses with precision and even customize categories to suit your unique spending patterns, providing a more tailored financial management experience. 

Unique colored LEDs are being used to provide a visual understanding of expenses. Audio warnings ensure that you prioritize your savings, making life way smoother. 

The digital expense calculator system is a user-friendly tool designed to help individuals manage their expenses efficiently while staying within their defined budget. This system seamlessly integrates user input, a 7-segment display, and various control modules to provide real-time information about expenses and budget status.

-----
## Operation

- **Initialization:** The system begins with an initialization phase where users set their budget.

- **Expense Entry:** Users increment expenses using the counter button. The 7-segment display continuously updates to reflect the current expense.

- **Category Management:** Users can switch between expense categories by pressing category buttons. The system allows them to enter category-specific expenses.

- **Cumulative Expenses:** The accumulator continuously sums the entered expenses, providing users with a running total.

- **Budget Status:** The comparator module continuously monitors the budget status. When cumulative expenses exceed 90 percent of the budget, a yellow warning light is displayed to prompt caution. If the cumulative expenses exceed the total budget, a red warning light is activated.

---
# Functional Table

This table represents one iteration of input to be given into the system.

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

----
# Flow of execution
![Design-S2-T7-flow chart.png](https://github.com/Nagabhushanam2005/eX_Calci/blob/main/Design-S2-T7-flow%20chart.jpg)



----

# Verilog Output
![Verilog output](https://github.com/Nagabhushanam2005/eX_Calci/blob/main/Verilog/verilog-output.png)

----
## References

1. [Implementation of Verilog HDL Calculator (PDF)](https://ir.unimas.my/id/eprint/33604/1/Implementation%20of%20Verilog%20HDL%2n%20Calculator.pdf)
2. [Play with 16x2 LCD Display](https://circuit4us.medium.com/play-with-16x2-lcd-display-ca70a047af36)
3. [3-Wire Serial LCD using a Shift Register](https://www.electronics-lab.com/project/3-wire-serial-lcd-using-a-shift-register)
4. [Budget Calculator](https://www.calculator.net/budget-calculator.html)
5. [Correct Way to Drive an LED using 74HCxx Logic](https://electronics.stackexchange.com/questions/376598/correct-way-to-drive-an-ledusing-74hcxx-logic)
