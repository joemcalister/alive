# Verification
I use this to allow people to verify that I'm still alive. Do this by checking the signature of the generated file "verification.png" against my public key, it should be signed correctly. I will generate and sign the new image every few days. If I havent updated it for 3 days, start to worry.

The generative drawing alone should NOT be taken as proof, the image must be signed with a valid signature matching my public key available [here](https://keybase.io/portablestorm/key.asc).

## To verify the signature
```Shell
git clone https://github.com/joemcalister/alive.git
cd alive/sign
gpg --verify verification.png.asc verification.png
```
This should result in something similar to 'Good signature from "Joe McAlister <joe.mcalister@lonestorm.com>"'

### Latest verify image
![Verify Image](/sign/verification.png?raw=true?random=6463722 "Verification Image")

### Update - 25th February 2017
I had to make a change to the file structure in the past commits, this caused many commits to become unsigned. I will sign the latest commit to authenticate these changes.