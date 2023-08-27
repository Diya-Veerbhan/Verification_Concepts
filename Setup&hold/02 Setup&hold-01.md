## Introduction
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/7d6320ed-0060-486e-a981-5f6accd4d1cc)

## Case 01 - Calculation wrt systems
### Calculation of setup time
* Consider the following case:
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/a6212d2d-5eb4-4cb8-a6f3-4c043b3f1558)
* For td>tc: 
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/0326df6a-a186-4bbd-aee5-fc9c14a9d303)
* After removing setup time violation, let Tss be the setup time for the system i.e the difference b/w the posedge of the clk Cin
and data Din
* From the timing dig,
* Tss + Tc =Td + Tsu
* Tss= Td-Tc+Tsu
 ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/cbad0bf5-69bb-4b5a-90eb-dbb9ceea77b0)

### Calculation of hold time
* For Td<Tc
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/dd6422d8-2a07-45c1-8e0e-681d34f4060a)
* Removing the hold time violation
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/b14b2d45-7a6e-48a4-9177-607bfab38c57)
* From the timing one can cleraly see that
* Ths + Td = Tc + Th
* Ths= Tc - Td + Th
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/a9089816-2acf-4690-904a-4a054f890da9)


  








