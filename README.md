# Approximate_Multipliers
A 4x4 Approximate multiplier created by reducing and approximating partial products

the partial product tree is divided into an inexact half with the first 4 digits and the exact half with the last 4 digits. The longest partial product chain is converted into propagate and generate terms.
the generate terms are ignored due to their low probability of being 1.
The first digit is exactly the partial product a0b0.
The second digit is calculated from an approximate half adder (OR gate). The carry is ignored due to its low probability.
The third digit is calculated with an approximate compressor of the 3 partial products. The compressor used in this case was designed with neglecting outcomes that are of low likelihood
The 4th digit was calculated by adding 2 propagate terms to the carry from the previous compressor. An approximate full adder was used.
the remaining part was done with exact addition.
