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


## Problem - solving
* ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/8de493e3-4bd9-4cd9-b6fa-6e5356a9083b)
* Two types of problems :
* ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/619f0940-9e77-4710-862b-c36f72b4928d)

## Problem-1 Find whether setup or hold time violation is present or not?
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/78f0c7b4-e819-4461-9479-ceef3015816c)

* Let's calculate the data path delay and clk path delay
* Tdata = (wire delay to clk input delay) + (clk to Q delay FF1) + (cell delay of inverter) + (wire delay between buffer and FF2)
* Tdata =(1,2)+(9,11)+(1,2)+(6,9)+(1,2)
* Tdata(max)= 2+11+2+9+2=26ns
* Tdata(min)=1+9+1+6+1=18ns
* Tclk = (wire delay from clk to buffer input) + (buffer delay) + (wire delay from buffer to FF2)
* Tclk =(2,3)+(5,9)+(2,3)
* Tclk(max) = 3+9+3=15ns
* Tclk(min) = 2+5+2=9ns
* <b> Remember : Ts = Td(max)-Tclk(min) ; Th = Tclk(max)-Td(min) We wont use these equations but for hold
  violation data min delay and clk max delay is considered and similarly for setup violation; in order to remember these points, one should remeber these eqns.
* For setup violation calculation, not for setup time calculation : Also for setup time one extra clk period is added to Tclk. If not given, then Tclk(max) is considered to be clk period </b>

* Hold volation :
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/724ccc9d-9c0c-4f64-b0ee-f0ba49361dac)
  * From dig, Tclk + Thold <= Tdata ; for no hold violation
  * Taking respective max, min values Tclk(max) + Thold <= Tdata(min)
  * 15 + 2 <= 18 ; No hold violation

* Setup violation :
  ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/d7268e5c-81de-4221-9d75-cebb9293c0a9)
  * From dig, Tdata + Tsetup <= Tclk: for no setup violation
  * Taking respective max, min values and adding one clk period in the Tclk delay
  * Tdata(max) + Tsetup <= Tclk(min) + Tclk(period)/Tclk(max)
  * 26 + 4 <= 9 + 15 ; 30<= 24 : Setup violation
  * Now, to remove this violation clk time period can be increased, or less buffer delay in data path
 
    ## Problem 2
    ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/76905e70-213a-4425-a12b-b595a6cd9c1c)

    ![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/308a0728-a506-4361-bc7f-d56c64a3a543)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/03aaed6a-49cd-4ce9-8827-7a8e4c309b74)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/984265d5-2de0-44bb-9455-d6b1b9125b92)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/42f86514-3398-497f-8b62-9802b076a18d)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/0ee1a7e9-4cf6-4d73-9e65-665ce00cfce6)


## Problem 3
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/47353e82-a3a4-42e1-8715-10a331a2541e)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/c28d6e03-6ff1-4e79-88fe-aa2c6dc9e98f)

![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/86116e5e-0c83-4045-9ca7-a324ddb0a07a)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/ecd88f19-9691-4fbe-bf04-5f5e8357842b)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/58281c20-fc1e-4aab-bb0e-ad728f16ba68)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/813a4fe4-17f5-4c2d-afda-853089b63b7d)




