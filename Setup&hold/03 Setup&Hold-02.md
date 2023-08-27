## Why setup and hold time exists?
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/eb052084-0250-4f7c-bdf9-9e0648346e11)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/d3373c42-7a5e-4e24-b18c-0615d1a82461)
* Inside D ff
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/491ebbfc-4b6a-4015-9380-f982a3aff57d)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/7ca7356b-036e-43b2-bee5-03e0bd093ff1)

* From this dig, we could infer that positive D-latch works as transparent latch when EN is high and vice versa for negative level sensitive latch
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/48efa4c4-1052-4408-8e21-f2d02c9dcd43)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/7cfc6337-7c28-4b92-a418-6bc6c8686e1b)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/6bf3809d-8d4e-4925-8e6c-e54d8111338a)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/a672a14c-6438-4221-a8d9-d649422eaa62)

* Connecting the negative level sensitive latch (Master) and positive level sensitive latch (Slave) in order to make positive
  edge triggered flop
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/694f827b-5c16-458d-96e8-bdde05cf422d)

* Data ko D se X node tk aane kuch time lgta h, to agr clk ka posedge aa gya h, to node X pr jo data sample hoga vo kuch time
  phle aaya hoga, vo time diff hi setup time h (travelling time of data from D to X)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/21f0c47f-21d7-43f2-8e6b-0e2fa4062045)


![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/210054ec-3217-4983-aa3a-24b5fd0fd62e)

* The MOS (clk NMOS and PMOS) takes some time for switching off and on, so during this transition of the clk level, the data should remain
same
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/ca035808-6edd-4757-9a55-c8b6581c158a)

## Summary
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/33cea269-d649-4002-9017-83dc94a5785d)
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/64aff33c-4bbf-4cd9-88dd-687068c972a4)


