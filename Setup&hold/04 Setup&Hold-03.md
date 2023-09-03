## Example 
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/927cf4ab-8f17-460a-8fcd-e2c26abb7a13)

* Sirf do condiiton hongi :
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/8307e2a6-bd5b-43cb-a4b9-f75183864f5a)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/79aec7bc-3043-441a-9aef-28eb889b34e5)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/dee86891-9e28-4c19-870b-b198ae4e2392)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/86eb3e68-0f9c-41fd-928d-c8111778ba69)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/599a39a1-f412-4001-9b28-0e315847707f)



## How to calculate Setup & Hold time for a design ?
* We will discuss the violations wrt one ff i.e second ff
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/bb058f57-4b66-4792-bebe-2bfa601b1888)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/8e16f3f2-c23a-4cab-99df-7efb469234e0)
* The setup/hold equations Ts=Td-Tclk and Th=Tclk-Td aren't considering here as the scenrio is different.
  Before we are calculating the setup/hold time of the external stimulus/pins and here we are calculating/trying
  to understand the internal ff setup/hold time. 
* <b> Setup Analysis at FF2 </b>
- Data Ts (setup time of FF2) time before FF2/C se phle stable ho jana chahiye
- Agr Ts=0 h, to FF2/D pr data time<=10ns tk pahuch jana chahiye. Agr data ko FF2/D pr pahuchne mein isse jyada time
lgega to FF2 ki clock edge pr dhang se sampling nhi hogi (data not stable) :setup violation
-Agr Ts=1ns h, to FF2/D pr data time <=(10ns-1ns) tk aana chahiye/ stable ho jana chahiye else setup violation
Try to imagine the waveforms; it's easy
* <b> Hold Analysis at FF2 </b>
- Clock edge ke baad data Th(hold time of FF2) tk stable rhna chahiye
- Means no change in data between 10ns and 10ns + Th
- Let's take 2 data at two different instances, D1 and D2 launched at t=0ns and t=10ns from FF1
- Ab D1 ki sampling t=10ns vali clk edge pr hogi, to D1 ko (10ns+Th) tk stable rhna hoga,
- Agr D2 (10ns+Th) se phle aa jaega to hold violation
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/b2b7cec0-3f97-402c-9616-7e6449f10c8b)

* It will be more clear with this dig
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/250f00f9-432c-45f6-b74c-fcd20e8ad421)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/2c2307fd-e81c-4b66-9b5c-bcc3cb534b06)
* Jo clk-to-Q delay h, vo D-to-Q delay bhi h, both are same for understanding purpose
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/802b1a33-e169-4005-8d8d-004a17a49e6a)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/02ad8162-6375-472e-b4ff-8437ae6df615)
