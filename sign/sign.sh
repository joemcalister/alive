# remove old files
rm ../sign/verification.png
rm ../sign/verification.png.gpg

# decrypt and compile the generate program
cd ../generate
gpg --output main.cpp --decrypt main.gpg
cmake .
make
./verifybot

# move the verification image to the sign folder
mv frame.png ../sign/verification.png

# re-sign the main cpp
gpg --output main.gpg --encrypt --recipient joe@lonestorm.com main.cpp

# change into sign
cd ../sign

# sign the image
gpg --sign verification.png

# remove the plaintext
rm main.cpp

# commit to github
git commit -S -am "Signed."
git push



exit 1;








mkdir signing
cd signing
echo "$1" >> temp_sig.txt

# gpg sign message
gpg --output to_upload.sig --clearsign temp_sig.txt

# git clone old repo
git clone https://github.com/joemcalister/alive.git &> /dev/null

# move file into it
mv to_upload.sig alive/signed.sig
cd alive

# commit the update
git commit -S -am "Updated verification" &> /dev/null

# push it
git push -u origin master &> /dev/null

# change back
cd ../../

# delete everything
sudo rm -r signing

# echo done
echo "VERIFIED"