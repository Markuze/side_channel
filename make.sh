trgbyte=3
gcc -Wall -o dom -D TARGETBYTE=$trgbyte  DOM_simulate_wrapper.c
gcc -Wall -o aes -D TARGETBYTE=$trgbyte AES_GenPowerProfile.c
./aes
./dom
