rm ../sign/verification.png
rm ../sign/verification.png.asc

# decrypt and compile the generate program
cd ../generate
gpg --output main.cpp --decrypt main.gpg
cmake .
make
./verifybot

# move the verification image to the sign folder
mv frame.png ../sign/verification.png

# remove the plaintext
rm main.cpp

# change into sign
cd ../sign

# sign the image
gpg --armor --detach-sig verification.png

# commit to github
git commit -S -am "Signed."
git push