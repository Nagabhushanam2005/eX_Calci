# eX_Calci

eX_Calci
1. 221CS214, Chirag S, chirags.221cs214@nitk.edu.in, 9535301854 
2. 221CS231, N Nagabhushanam, nnagabhushanam.221cs231@nitk.edu.in, 9113557631 
3. 221CS232, N Yaswanth, namburiyaswanth.221cs232@nitk.edu.in, 9676794131 
Abstract:
This project's goal is to develop an expense calculator utilizing the concepts of digital 
systems. It combines hardware and software elements to produce an integrated system
that can calculate expenses effectively. This project offers a chance to apply theoretical 
knowledge to a real-world situation in the field of digital systems, producing a useful 
and approachable expense calculator. This system puts forward a innovative solution to 
the user by keeping them conscious of the ongoing expenses through various mediums. 
Our motivation for this project was the need of 
i)Budget tracking: An expense calculator helps users and businesses monitor spending 
patterns making it easier to stick to budget. 
ii)Financial Planning: Users can forecast future expenses based on past data, aiding in 
long term financial planning and decision making. 
iii)Expense Categorization: The calculator categorizes expenses, providing insights into 
where money is being allocated, which is crucial for optimizing finances. 
As a team we would contribute to the way of life of every individual in management of 
finance, capital, investments and future conscious about one’s own expenditure. This 
small contribution by us can uplift the responsibility of the citizens and for a better 
future. Our expense calculator offers a comprehensive categorization system, allowing 
you to classify expenses with precision and even customize categories to suit your 
unique spending patterns, providing a more tailored financial management experience. 
Unique coloured LEDs are being used in-order to give a visual understanding about 
expenses. Audio warning ensure that you prioritize your savings above all making life 
way smoother 
The digital expense calculator system is a user-friendly tool designed to help individuals 
manage their expenses efficiently while staying within their defined budget. This system 
seamlessly integrates user input, a 7-segment display, and various control modules to 
provide real-time information about expenses and budget status. 
Brief:
Introduction :
Managing spending has become an increasingly complex undertaking for individuals 
and organizations alike in the fast-paced world of modern finance. The introduction of 
expense calculators has proven to be a game changer, providing a comprehensive range 
of features that go far beyond simple arithmetic computations. This project arose from a 
desperate requirement for three important features: budget tracking, financial planning, 
and spending categorization. These components are the bedrock of efficient financial 
management, and the expense calculator is a great instrument for tackling them.
Budget Tracking: 
Budget tracking stands as the linchpin of financial stability, providing users with 
invaluable insights into their spending habits. The expense calculator operates as a 
vigilant guardian, meticulously recording expenses across a diverse range of categories. 
This meticulous record-keeping allows users to gain a profound understanding of their 
financial behavior, enabling them to make informed decisions and ensure adherence to 
predefined budgets.
The implementation of this feature is characterized by an intuitive user interface. Users 
are provided with a platform to input expenses alongside their respective categories. 
These inputs are then processed and organized, culminating in a comprehensive 
overview of spending patterns. The provision of clear visual representations, including 
charts and graphs, offers a dynamic snapshot of budget adherence. This visual 
feedback mechanism serves as a powerful motivator for users to stay on track and 
exercise financial discipline.
Financial Planning: 
While budgeting is concerned with the present, financial planning is concerned with the 
future. It enables users to confidently and precisely navigate the complicated terrain of 
upcoming financial responsibilities. The expense calculator enables users to generate 
accurate projections about future spending by examining historical expense data. This 
forecasting power is crucial for long-term financial planning, maintaining a firm 
economic foundation in a volatile financial landscape.
As a result, users gain a solid estimate of anticipated financial commitments, giving 
them a competitive advantage in financial planning. This foresight not only fosters 
confidence in decision-making but also serves as a bulwark against unforeseen 
financial challenges.
Expense Categorization: 
Expense classification is a vital component of the expense calculator, providing 
thorough insights into financial resource allocation. This functionality goes beyond 
mere mathematics, giving users a detailed understanding of where their money is being 
spent. It is a dynamic tool that is both informative and crucial in optimizing financial 
resources for maximum efficiency.
The calculator uses an easy-to-understand categorization system to divide spending 
into various categories such as grocery, transportation, and entertainment. This 
category streamlines the process of identifying important areas of expenditure, allowing 
users to make informed resource allocation decisions. Users can make strategic 
changes to their financial habits by examining their spending trends across several 
categories. 
For example, if a large part of income is continuously devoted to non-essential 
expenses, consumers can take efforts to reallocate resources to savings or 
investments.
The technology also provides dynamic visualizations that depict spending patterns 
visually. This function aids in immediately identifying areas for improvement, resulting in 
more efficient resource allocation. These visual representations are a valuable tool that 
allows users to acquire a comprehensive view of their financial landscape and make 
data-driven decisions.
Key Components and Functionalities:
1. Input and Interaction:
• Counter Button: The system incorporates a user-friendly counter button, 
allowing users to increment their expenses quickly. Each press increases 
the displayed expense value. 
2. Data Handling:
• Registers: The system utilizes registers to store and manage various data, 
including the current expense value, total budget, and cumulative 
expenses. 
3. Display:
• 7-Segment Display: A 7-segment display provides a visual representation 
of the current expense value. It uses a BCD to 7-segment converter to 
display the numeric data. 
4. Expense Accumulation:
• Accumulator: An accumulator module is employed to continuously sum 
the entered expenses. This ensures that users have an up-to-date record 
of their spending. 
5. Budget Comparison:
• Comparator: The comparator module is responsible for evaluating the 
cumulative expenses against the predefined budget. It triggers alerts 
when specific thresholds are reached. 
6. Alert System:
• LED Indicators: To alert users about their budget status, LED indicators 
are used. When the cumulative expenses surpass 90 percent of the 
budget, a yellow warning light is displayed. If the expenses exceed the 
total budget, a red warning light is activated. 
7. Category Management:
• Category Selection: Users can switch between expense categories using 
dedicated buttons. There are two categories included in the system. 
1.Additional expenses: This expense can include your special needs such 
as hangout costs, birthday party costs, cost of snacks that you have, 
entertainment expense. 
2.Bills: This will include all the necessary expenses such as travel, health, 
and other necessities. 
After selecting a category, they can enter the corresponding expense. The 
system keeps track of category-specific expenses. 
Operation:
• Initialization: The system begins with an initialization phase where users set 
their budget. 
• Expense Entry: Users increment expenses using the counter button. The 
7segment display continuously updates to reflect the current expense. 
• Category Management: Users can switch between expense categories by 
pressing category buttons. The system allows them to enter category-specific 
expenses. 
• Cumulative Expenses: The accumulator continuously sums the entered 
expenses, providing users with a running total. 
• Budget Status: The comparator module continuously monitors the budget 
status. When cumulative expenses exceed 90 percent of the budget, a yellow 
warning light is displayed to prompt caution. If the cumulative expenses exceed 
the total budget, a red warning light is activated. 
Benefits:
• Real-time expense tracking. 
• Improved financial awareness. 
• Proactive budget management. 
• Visual alerts for budget thresholds. 
The digital expense calculator system is an effective tool that encourages financial 
responsibility and helps users stay within their defined budget.. 
Functional Table
This table represents one iteration of input that to be given into the system. 
Category INPUT Cumulative LEDs 
Green LED Yellow LED Red LED 
D 5000 0000 1 0 0 
A 2000 2000 1 0 0 
B 1000 3000 1 0 0 
A 1500 4500 1 0 0 
B 100 4600 0 1 0 
A 390 4990 0 1 0 
B 100 5090 0 0 1 
B 2000 7090 0 0 1 
Logisim
Since the whole circuit is very big. We broke it down to components. 
Input part 
2.Storage part 
3. Comparing part. 

Save button
Conclusion: 
Finally, the expense calculator goes beyond its position as a computational tool, it is a 
dynamic instrument that provides individuals with the resources they need for effective 
financial management. It delivers the knowledge needed to make informed decisions
and construct a route to financial well-being through budget tracking, financial 
planning, and cost classification.
The expense calculator is a beacon of clarity in an increasingly complex financial scene, 
showing the path to a safe and wealthy future. Embracing this technology is a strategic 
imperative for individuals who are serious about mastering their financial destiny.
The expense calculator is a valuable tool for managing the complex world of personal 
and company budgets. Its comprehensive features empower customers to make wise 
financial decisions, paving the road for long-term prosperity and stability. Individuals 
and corporations alike can embark on a journey to financial empowerment and success 
with the expense calculator as a reliable ally.
References: 
1.https://ir.unimas.my/id/eprint/33604/1/Implementation%20of%20Verilog%20HDL%2n 
%20Calculator.pdf 
2. https://circuit4us.medium.com/play-with-16x2-lcd-display-ca70a047af36
3. https://www.electronics-lab.com/project/3-wire-serial-lcd-using-a-shift-register
4. https://www.calculator.net/budget-calculator.html
5. https://electronics.stackexchange.com/questions/376598/correct-way-to-drive-anledusing-74hcxx-logic
