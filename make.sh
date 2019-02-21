[ -z $trgbyte ] && trgbyte=3
gcc -Wall -o dom.x -D TARGETBYTE=$trgbyte  DOM_simulate_wrapper.c
gcc -Wall -o aes.x -D TARGETBYTE=$trgbyte AES_GenPowerProfile.c
./aes.x
./dom.x
