## Synchronous FIFO

* Enable signals, also often called chip-select signals, start the synchronous execution of write and read operations in the various
devices, such as memories and ports

  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/7402c603-8632-4065-bfac-62eff0355eec)

* two free running clocks each from writing system and reading system
* Writing is controlled by the WRITE ENABLE input synchronous with
WRITE CLOCK, similar for READ (READ ENABLE & READ CLOCK)
* FULL aur EMPTY signals fifo mein data ke hisab se set aur reset hote h
* FULL status signal WRITE CLOCK ke hisab se hi change hoga, even if the change is produced by the reading of a data word
* Aise hi EMPTY signal h, READ CLOCK ke hisab se hi change hoga; EMPTY ki need bhi READ operation ke time pr hi pdti h
* A synchronous FIFO is the only concurrent read/write FIFO in which the status
signals are synchronized with the driving logic
* <b> Note </b> : Free running clock is the clock without any glitches and consistent 1-0 without skew. If any clock has inconsistency over the period of time. This due to many factor, board level noise, jitter, Oscillator issue or even PVT consider as non-free clock and cause issue or functionality mismatch

  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/81594efd-396d-4a86-aec5-92ca54389a8b)

