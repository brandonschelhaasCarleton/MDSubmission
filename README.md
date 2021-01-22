# MDSubmission
MD Submission for PA#2. 
Attempted Change: Add third mass.
Code changes include:
- Removal of Mass0 and Mass1 global variables from all files
- Replacement of "Masses" structure which holds two arrays of user-definable length
  - One array for names of atoms (e.g. Silicon, Argon, Boron)
  - One array for masses of atoms 
  - the "Type" variable is used as an index into these arrays, where Type=0 accesses first element, Type=1 accesses second element, etc.
- Replaced each instance of Mass0 and Mass1 with Masses.mass(1) and Masses.mass(2), respectively
- Overall change was the ABILITY to add a third, and more, masses, but did not USE the third, or more, mass. 
