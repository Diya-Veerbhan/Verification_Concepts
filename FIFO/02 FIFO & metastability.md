## Types of FIFO
* <b> Shift register </b>
  - FIFO with an invariable number of stored data words and, thus, the necessary synchronism between
the read and the write operations because a data word must be read every time one is written
  - The shift register is not usually referred to as a FIFO, although it is first-in first-out in nature
* <b> Exclusive read/write FIFO </b>
   - FIFO with a variable number of stored data words and, because of the internal structure,
the necessary synchronism between the read and the write operations
  - Timing restrictions
  - In exclusive read/write FIFOs, the writing of data is not independent of how the data are read
  - There are timing relationships between the write clock and the read clock
  - For instance, overlapping of the read and the write clocks could be prohibited. To
permit use of such FIFOs between two systems that work asynchronously to one another, an external circuit is required for
synchronization. But this synchronization circuit usually considerably reduces the data rate
* <b> Concurrent read/write FIFO </b>
  - FIFO with a variable number of stored data words and possible asynchronism
between the read and the write operation
   - No timing restrictions
   - Concurrent read/write FIFOs can be used in synchronous systems without any difficulty
   - There is no dependence between the writing and reading of data
   - Simultaneous writing and reading are possible in overlapping fashion or successively. This means that two systems with different frequencies can be
connected to the FIFO.
   - . Concurrent read/write FIFOs, depending on the control signals for writing and reading, fall into two groups:
- <b> Synchronous FIFOs</B>
- <b> Asynchronous FIFOs </b>

## Synchronization of an external signal
* The problem of synchronizing an external signal with a local clock generator normally is solved by using a flip-flop
*  but this means violating the setup and hold times stated in the data sheets for the devices. As a result, the flip-flop
can go into a metastable state

![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/6cf7edbf-b571-40b3-b3b9-78c252e98dbd)

* With a D-type flip-flop, the setup or hold times must be maintained.
* This means that for a short time before the clock edge (setup
time) and for a short time afterward (hold time) the level on the D input must not change to ensure that the function of the
flip-flop is executed correctly
* If these conditions are not maintained, the flip-flop can become metastable

  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/11f4ae02-6b08-429c-bacc-6aacec2c3e46)

* <b> Metastability </b> : When there is setup and hold time violations in a flip-flop, it enters a state in which its output is unpredictable: this is known as a metastable state (quasi-stable state). At the end of the metastable state, the flip-flop settles down to either ‘1’ or ‘0’. This is referred to as metastability
* Concurrent read/write
FIFOs that are driven by two systems working asynchronously to one another must perform internal synchronization of the
asynchronous external signals
* For physical reasons, there are no ideal flip-flops with a setup and hold time of zero, so there can be no synchronizing circuit
that works faultlessly
* The quality of a synchronizing circuit is indicated by its mean time between failures (MTBF).
* This is calculated from the frequency of the asynchronous signal (fin), the clock frequency of the synchronizing circuit (fclk), and the
length of the critical time window (td).

  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/b54c96d5-6460-49c9-9fad-c22646012a77)

* MTBF can be improved appreciably by multilevel synchronization
  
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/92720e75-bca9-4b8d-a705-692f70571cbb)

* The second flip-flop can only go into a metastable state if the first flip-flop is
already metastable. This metastability can considerably increase the delay of the first flip-flop
* But if the period of the clock
signal is longer than the sum of the increased delay plus the setup time of the second flip-flop, the second flip-flop can never
go into a metastable state : Tclk >Tdelay + Tsetupff2

![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/fa975b81-07d6-4a8b-8040-982251d0d15b)




 


