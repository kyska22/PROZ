print("Escreva seu nome: ")
nome = input()

x = True

while(x == True):
  print("Digite o ano de nascimento")
  try:
    ano = int(input())
    if (ano < 1992) or (ano > 2022):
      print("O ano tem que ser entre 1922 e 2022")
    else:
      idade = 2023 - ano
      print("Seu nome é: ", nome, "tem a idade: ",idade)
      x = False
  except:
      print("Debe digitar apenas numeros")
