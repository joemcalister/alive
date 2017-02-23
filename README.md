# Verification
I use this to allow people to verify that I'm still alive. Do this by checking the signature of the generated file "verification.png.gpg" against my public key, it should be signed correctly and be equal to "verification.png". I will generate and sign the new image every few days. If I havent updated it for 3 days, start to worry.

The generative drawing alone should NOT be taken as proof, the image must be signed with a valid signature matching my public key available [here](https://keybase.io/portablestorm/key.asc).

## To verify the signature
```Shell
git clone https://github.com/joemcalister/alive.git
cd alive/sign
gpg --verify verification.png.gpg
```
This should result in something simmilar to 'Good signature from "Joe McAlister <joe.mcalister@lonestorm.com>"'

### Latest verify image
![Verify Image](/sign/verification.png?raw=true "Verification Image")