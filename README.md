


# task_1_ieee_core_cascade
Q1).

The T flip flop is made by an XOR gate and a D flip flop , the XOR gaate is modelled using the Mux but the d flip flop is modelled
behaviourally , when the D flip flop is modelled using the mux and with the XOR gate , the output is not what is desired.

Below is the wavefrom for the T flip flop from the code uploaded

<img width="952" height="560" alt="image" src="https://github.com/user-attachments/assets/57bb8f1d-7fcb-4deb-abea-803391aec820" />

Q2).

<img width="954" height="556" alt="q2a" src="https://github.com/user-attachments/assets/02dcfa1e-06d9-4796-a202-a8f64abf2804" />

The above waveform is the output waveform of a D flip flop from the uploaded verilog code for it .

<img width="956" height="554" alt="q2b" src="https://github.com/user-attachments/assets/ac705b4f-7ef8-4e77-9c0d-a74d15c7e164" />

The above waveform is obtained by modifying the outer hardware of the D flip flop to make the clear to set , by modelling two NOT 
gates the issue is easily taken care of , Qn is consistent with D the normal operation is not affected , at the same time when clear
is high the D flip flop outputs 0 but due to the NOT operation the final output becomes 1.

<img width="293" height="143" alt="image" src="https://github.com/user-attachments/assets/9107b292-84a6-4af6-b998-ab4d7441cd3a" />

Q3).

![WhatsApp Image 2025-12-17 at 9 23 38 PM](https://github.com/user-attachments/assets/5096b1f2-f52a-4597-a56b-07a8b0eb8a86)

According to the question the pattern 101 is to be detected in a block of 4 bits which are overlapping , the state diagram
drawn is to detect the 101 sequence at the same time , keeping in mind the block of 4 bits , the design avoids the output 
being high only when 3 bits 101 are detected rather it waits for the 4 bits block to complete and generates a high output signal ,
the following state diagram follows the given example input and output sequence , which justifies its validity . The appropriate 
code (.v file) is uplaoded , given below is the tested waveform .

<img width="954" height="562" alt="q3" src="https://github.com/user-attachments/assets/c403269d-a746-4c14-a1eb-e58c4a0cbc33" />

Q4).
The blocking assignment is called because of its execution order and priority execution order , which means in a given block of 
executable statements , the first written will be executed first and then the rest will be executed in the follwing written order 
, which gives us the oppurtunity to first store the value of a variable in a temporary variable , and then swap out , also the operation
of swapping can also be done without the use of a temporaray varibale , if we add both the variables and assign it to one of the 
variable and then subtract the new values with the original will eventually lead us to the swapped values. 
the below waveform is the obtained waveform by using blocking assignments 

<img width="952" height="552" alt="q4a_t" src="https://github.com/user-attachments/assets/9bb54860-e844-48f0-9c95-5ea46ae67fa9" />

The non blocking assignments whereas treats a block of written statements , as if they are to be executed at the same time , which 
means if we assign a value to another and vice versa , the swapping can be performed without a temporary variable , or any addition 
subtraction just simple two statements will do the job .
below is the waveform for the swapping two numbers by using non blocking assingment 

<img width="952" height="556" alt="q4_b" src="https://github.com/user-attachments/assets/1ae1e4c3-235a-469c-a93a-9810f0295fca" />

Q5).
the shift register reset is aysnchronous as the code triggers reset when the areset signal is high without having any dependancy
on the clock signal , load is given a higher priority than a enable by the use of else if statements , the one written first , is 
given more priority than the one written below , the shifting operation is taken care of by use of concatenated vectors , and q is 
declared as a contents of the shift register . Below is the waveform of the shift register.

<img width="955" height="561" alt="q5" src="https://github.com/user-attachments/assets/a7e0ee85-0478-4e0a-9304-59c7ab7d4bfd" />

Q6).
In case of signed addition an overflow can be detected by the fact that addition of two postives cannot yield a negative and 
addition of two negatives cannot yield a positive , as the numbers are in the twos complement form the MSB indicates the sign
so overflow condition triggers when the following pattern is encountered .
so overflow = (~a[7]&~b[7]&s[7])|(a[7]&b[7]&~s[7]) ,  where X[7]is the MSB of the two numbers .
Below is the waveform .

<img width="957" height="559" alt="q6" src="https://github.com/user-attachments/assets/fe955c23-9212-4543-bea8-68f1d8298310" />
