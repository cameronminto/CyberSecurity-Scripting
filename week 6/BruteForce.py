from string import ascii_lowercase as ALC
from itertools import chain, product
import hashlib

passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

for chars in chain(ALC, product(ALC, repeat=2), product(ALC, repeat=3), product(ALC, repeat=4), product(ALC, repeat=5)):
    guess = (''.join(chars))
    print (guess)

    wordlistHash = hashlib.sha256(guess.encode("utf-8")).hexdigest()

    print(f"Trying password {guess}:{wordlistHash}")

    if(wordlistHash == passwordHash):

        print(f"Password has been cracked! It was {guess}")

        break
