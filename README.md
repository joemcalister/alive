# verification
Verify that I am still alive daily by checking the signature of the generated file against my public key. I will generate and sign the new image every day.

The generative drawing alone should not be taken as proof, the image must be signed with a valid signature matching my public key available [here]("https://keybase.io/portablestorm/key.asc")

## to verify the signature
```Shell
git clone https://github.com/joemcalister/alive.git
cd alive/sign
gpg --verify verification.png.gpg
```
This should result in something simmilar to 'Good signature from "Joe McAlister <joe.mcalister@lonestorm.com>"'

### Latest verify image
![Verify Image](/sign/verification.png?raw=true "Verification Image")