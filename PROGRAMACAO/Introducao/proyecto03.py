# Precisamos imprimir um número para cada andar de um hotel de 20 andares. 
# Porém, o dono do hotel é supersticioso e optou por não ter um 13ro andar.
#Escreva um código que imprima todos os números exceto o número 13.

numero = 0
for i in range(20):
  numero = numero + 1
  if (numero == 13):
    continue
  if (numero == 21):
    break
  print(numero)

#Escreva mais um código que resolva o mesmo problema,
#mas dessa vez usando o laço de repetição 'while'.

numero = 1
while (numero <= 20):
  numero = numero + 1
  if (numero == 13):
    continue
  print(numero)

#Como desafio, imprima eles em ordem decrescente (20, 19, 18...)

for i in range(20,0,-1):
  numero = numero + 1
  if (i == 13):
    continue
  if (i == 21):
    break
  print(i)

#O codigo esta funcionando neste link
#https://colab.research.google.com/drive/1CxDERmu0bfiFhVRU5ka3G2D6oMW8Q2e7?usp=sharing
