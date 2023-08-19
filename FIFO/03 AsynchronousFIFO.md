## Asynchronous FIFO

![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/05d6500f-cc10-454e-8d82-5a94de25faa3)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/3577cee6-0779-462a-a9d7-54fafaad1fda)

* WR operation ke liye FULL status signal check krenge, age FIFO full h to we cannot write else Write clk ke according we will write
* Similarly Read ke liye EMPTY signal check krenge, if not empty to read
* The disadvantage of a FIFO of this kind is that the status signals cannot be fully synchronized with the read and write clock
  
## Status signals problem with synchronization (Extra)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/4354224d-c52c-493b-8a3c-5768de842dde)
* If there is space in the FIFO for only one data word, the next write cycle sets the FULL signal.
* Then, the writing system queries
the FULL signal with the aid of its D flip-flop and waits until there is again space in the FIFO. When a data word is read, READ
CLOCK resets the FULL status line.
* This reset is synchronous with the reading system but asynchronous to the writing system.
* In the worst case, the setup or hold time of the flip-flop in the writing system is violated. This flip-flop goes into a metastable
state, the results of which were discussed previously.
* The problem described above also occurs with the EMPTY status signal. EMPTY should be synchronous with the reading
system, but it is reset by the writing system.
* So, the resetting of EMPTY is inevitably asynchronous to the reading system.
* This asynchronism is a result of the system, and synchronization is not possible within the asynchronous FIFO.
*  If
synchronization becomes necessary, the designer must provide it externally. Nevertheless, there are wide-ranging application
possibilities for asynchronous FIFOs
