=begin
As atividades estão separadas em blocos, caso queira verificar o código em funcionamento,
é só retirar o "=end" do final da atividade expecífica e colocar abaixo da descrição do exercício.
=end




=begin
Crie uma class para calcular o IMC.


class IMC
  def criandoPessoa()
    print "Informe seu nome: "
    @nome = gets.chomp
    print "Informe seu peso: "
    @peso = gets.chomp.to_f
    print "Informe sua altura: "
    @altura = gets.chomp.to_f
    return "#{@nome} você está com #{@peso}kg e com altura de #{@altura}"
  end

  def calcIMC()
    imc = @peso / (@altura ** 2)
    @imc = imc.ceil(1)
    puts "calculando seu imc..."
    sleep(2)
    puts "Seu imc deu #{@imc}"
  end

  def verificandoIMC()
    if @imc >= 40
      puts "Você está com obesidade grau III ou Mórbida"
    elsif @imc >= 35
      puts "Você está com obesidade grau II"
    elsif @imc >= 30
      puts "Você está com obesidade grau I"
    elsif @imc >= 25
      puts "Você está com sobrepeso"
    elsif @imc >= 18.5
      puts "Você está com  opeso normal"
    else
      puts "Você está abaixo do peso"
    end
  end
  
end
pessoa = IMC.new
puts pessoa.criandoPessoa()
puts pessoa.calcIMC()
puts pessoa.verificandoIMC()
=end














=begin
Escreva uma função, chamada fatorial, que retorne o fatorial de um número. A função deve verificar se o parâmetro passado é inteiro e maior do que zero, caso contrário deve retornar -1.


def fatorial
  print "Digite número que deseja fatorar: "
  fat = gets.chomp.to_i
  if fat > 0
    for i in 1...fat
      fat *= i
    end
    return puts "O valor do fatorial é #{fat}!"
  else
    return -1
  end
end

puts fatorial()
=end




















=begin
Faça um algoritmo/app para ler o código, nome e o preço de 15 produtos, calcular e escrever:
- o maior preço lido;
- o menor preço lido;
- a média aritmética dos preços dos produtos.


codigos = []
nomes = []
preços = []
i = 0
total = 0

while i <= 3 
  print "Diga o codigo do produto: "
  nomes.push(gets.chomp.to_i)
  print "Diga o nome do produto: "
  nomes.push(gets.chomp)
  print "Diga o valor do produto: "
  preços.push(gets.chomp.to_f)
  i = i + 1
end

maiorvalor = preços[0]
localmaior = 0
for i in (0...preços.size) 
  if preços[i] > maiorvalor
    maiorvalor = preços[i]
    localmaior = i
  end
end

menorvalor = preços[0]
localmenor = 0
for i in 0...preços.size
  if preços[i] < menorvalor
    menorvalor = preços[i]
    localmenor = i
  end
end

for i in preços do
  total = total + i
  ari = total / preços.size
end

puts maiorvalor
puts menorvalor
puts ari
=end






















=begin
A prefeitura de uma cidade deseja fazer uma pesquisa entre seus habitantes. Faça um algoritmos para coletar dados sobre o salário e número de filhos de cada habitante e após as leituras, escrever:
a) Média de salário da população;
b) Média do número de filhos;
c) Maior salário dos habitantes;
d) Percentual de pessoas com salário menor que R$ 150,00.

Obs.: O final das leituras dos dados se dará com a entrada de um “salário negativo”.


habitantes = []
salário = []
numfilhos = []
resp = "S"

while resp == "S"
  print "Nome do habitante: "
  habitantes.push(gets.chomp)
  print "Tem filhos? [S/N] "
  perg = gets.chomp.upcase
  if perg == "S"
    print "Quantos filhos: "
    quant = gets.chomp.to_i
    numfilhos.push(quant)
  end
  print "Qual o seu salário: "
  salário.push(gets.chomp.to_f)
  print "Quer adicionar outro habitante? [S/N] "
  perg2 = gets.chomp.upcase
  if perg2 != "S"
    resp = "N"
  end
end

totalsal = 0

for i in salário
  totalsal = totalsal + i
  medsal = totalsal / salário.size
end

totalfil = 0

for i in numfilhos
  totalfil = totalfil + i
  medfil = totalfil / numfilhos.size
end

maiorsalario = salário[0]
for i in (0...salário.size)
  if salário[i] > maiorsalario
    maiorsalario = salário[i]
  end
end

menores = 0
for i in salário
  if i < 150
    menores = menores + 1
  end
end

percentu = (menores / habitantes.size) * 100

puts "Média de salário é: R$#{medsal}"
puts "Média de filhos é: #{medfil} por habitante"
puts "Maior de salário é: R$#{maiorsalario}"
puts "Percentual de habitantes com salário inferiro a R$150: #{percentu}%"
=end






















=begin
Um posto está vendendo combustíveis com a seguinte tabela de descontos:

Álcool
até 20 litros, desconto de 3% por litro
acima de 20 litros, desconto de 5% por litro


Gasolina
até 20 litros, desconto de 4% por litro
acima de 20 litros, desconto de 6% por litro

Escreva um algoritmo que leia o número de litros vendidos e o tipo de combustível (codificado da
seguinte forma: A-álcool, G-gasolina), calcule e imprima o valor a ser pago pelo cliente sabendo-se
que o preço do litro da gasolina é R$ 3,30 e o preço do litro do álcool é R$ 2,90.


print "Quantos litros: "
quantLitros = gets.chomp.to_f
puts "Qual combustivel? \n[A] - Álcool; \n[G] - Gasolina "
combustivel = gets.chomp.upcase
if combustivel == "G"
  if quantLitros > 20
    valorTotal = (quantLitros * 3.3) * 0.94
  else 
    valorTotal = (quantLitros * 3.3) * 0.96
  end
end
if combustivel == "A"
  if quantLitros > 20
    valorTotal = (quantLitros * 2.9) * 0.95
  else 
    valorTotal = (quantLitros * 2.9) * 0.97
  end
end

puts "Valor total: R$#{valorTotal.round(2)}"
=end




















=begin
A jornada de trabalho semanal de um funcionário é de 40 horas. O funcionário que trabalhar mais
de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular com um acréscimo de 50%.
Escreva um algoritmo que leia o número de horas trabalhadas em um mês, o salário por hora e escreva
o salário total do funcionário, que deverá ser acrescido das horas extras, caso tenham sido trabalhadas
(considere que o mês possua 4 semanas exatas).


print "Quantas horas você trabalhou esse mês? "
horasTrabalhadas = gets.chomp.to_i
print "Qual seu salário por hora? R$"
valorHora = gets.chomp.to_f
if horasTrabalhadas > 160
  valorNormal = valorHora * 160
  valorExtra = (valorHora * (horasTrabalhadas - 160)) * 1.5
  puts "Você receberá R$#{valorNormal} com o extra de R$#{valorExtra} sendo o valor total de R$#{valorNormal + valorExtra}"
else 
  puts "Você receberá #{valorNormal}"
end
=end
















=begin
Dou de cores ressistor 

Se você quiser construir algo usando um Raspberry Pi, você provavelmente vai usar resistores. Para este exercício, você precisa saber duas coisas sobre eles:

Cada resistor tem um valor de resistência.
Os resistores são pequenos - tão pequenos que se você imprimiu o valor de resistência neles, seria difícil de ler.
Para contornar esse problema, os fabricantes imprimem faixas codificadas por cores nos resistores para denotar seus valores de resistência. Cada banda tem uma posição e um valor numérico.

As primeiras 2 bandas de um resistor têm um esquema de codificação simples: cada cor mapeia para um único número. Por exemplo, se eles imprimiam uma faixa marrom (valor 1) seguida de uma faixa verde (valor 5), ela se traduziria para o número 15.

Neste exercício você vai criar um programa útil para que você não tenha que lembrar os valores das bandas. O programa terá nomes de cores como entrada e saída de um número de dois dígitos, mesmo que a entrada seja superior a duas cores!

As cores da banda são codificadas da seguinte forma:

Preto: 0
Marrom: 1
Vermelho: 2
Laranja: 3
Amarelo: 4
Verde: 5
Azul: 6
Violeta: 7
Cinza: 8
Branco: 9
Pelo exemplo acima: o verde-marrom deve retornar 15, marrom-verde-violeta deve retornar 15 também, ignorando a terceira cor.


Preto = 0
Marrom = 1
Vermelho = 2
Laranja = 3
Amarelo = 4
Verde = 5
Azul = 6
Violeta = 7
Cinza = 8
Branco = 9

guardaValor = []
resp = "S"
while resp == "S"
  print "Digite a cor: "
  cor = gets.chomp.downcase
  if cor == "preto"
    guardaValor.push(0)
  elsif cor == "marrom"
    guardaValor.push(1)
  elsif cor == "vermelho"
    guardaValor.push(2)
  elsif cor == "laranja"
    guardaValor.push(3)
  elsif cor == "amarelo"
    guardaValor.push(4)
  elsif cor == "verde"
    guardaValor.push(5)
  elsif cor == "azul"
    guardaValor.push(6)
  elsif cor == "violeta"
    guardaValor.push(7)
  elsif cor == "cinza"
    guardaValor.push(8)
  else
    guardaValor.push(9)
  end
  print "Quer adicionar outra cor? [S/N] "
  perg = gets.chomp.upcase
  if perg == "N"
    break
  end
end
valoresApresentar = []
valoresApresentar.push(guardaValor[0])
valoresApresentar.push(guardaValor[1])
puts "#{valoresApresentar.join("")}"
=end



















=begin
A Federação Gaúcha de Futebol convidou você a escrever um programa para apresentar um resultado estatístico de várias GRENAIS. Escreva um programa que leia o número de gols marcados pelo Inter e o número de gols marcados pelo Grêmio em um GRENAL. Escreva a mensagem "Novo grenal (1-sim 2-nao)" e solicite uma resposta. Se a resposta for 1, dois novos números devem ser lidos (outro caso de entrada) perguntando o número de gols marcados pelas equipes em uma nova partida, caso contrário o programa deve ser concluído, imprimindo:

- Quantos GRENAIS fizeram parte das estatísticas.
- O número de vitórias do Inter.
- O número de vitórias do Grêmio.
- O número de sorteios.
- Uma mensagem indicando a equipe que ganhou o maior número de GRENAIS (ou a mensagem: "Não houve vencedor" se ambas as equipes ganharam a mesma quantidade de GRENAIS).

Entrada
A entrada contém dois valores inteiros, correspondentes aos gols marcados por ambas as equipes. Em seguida, há um inteiro (1 ou 2), correspondente à repetição do algoritmo.

Saída
Após cada leitura dos gols deve ser impressa a mensagem "Novo grenal (1-sim 2-nao)". Quando o programa estiver concluído, o programa deve imprimir as estatísticas como exemplo abaixo.



winInter = 0
winGremio = 0
draw = 0
quantGrenais = 0
while true
  print "Quantos gols fez o Inter? "
  golsInter = gets.chomp.to_i
  print "Quantos gols fez o Grêmio? "
  golsGremio = gets.chomp.to_i
  quantGrenais += 1
  if golsInter > golsGremio
    winInter += 1
  elsif golsGremio > golsInter
    winGremio += 1
  else
    draw += 1
  end
  print "Novo grenal (1-sim 2-nao):"
  resp = gets.chomp.to_i
  if resp == 2
    break
  end
end

puts "#{quantGrenais} grenais"
puts "Inter:#{winInter}"
puts "Grêmio:#{winGremio}"
puts "Empates:#{draw}"
if winInter > winGremio
  puts "Inter venceu mais"
elsif winGremio > winInter
  puts "Grêmio venceu mais"
else
  puts "Não ouver vencedor"
end
=end


















=begin
Mangojata está aprendendo Programação de Computadores. Ela acha tudo muito fácil, muito simples. Ela vai fazer um pequeno programa que lê os nomes de seus amigos e a distância de sua casa para cada um deles. Portanto, ela simplesmente quer calcular qual é a distância média entre sua casa e sua casa de amigos (em metros). Mas Aristoclenes, um programador muito mais experiente, alertou-a que às vezes o que parece simples pode ter alguns detalhes, dependendo da linguagem de programação usada para implementação.

Entrada
A entrada contém vários casos de teste. Cada caso de teste é composto por duas linhas. A primeira linha contém o nome de um amigo de Mangojata. A segunda linha contém um número inteiro que indica a distância média entre a casa de Mangojata e a casa de um amigo.

Saída
A saída deve ser um número com um dígito após o ponto decimal (por favor, use uma variável de dupla precisão) indicando a distância média entre a casa de Mangojata e a casa de seus amigos, como o exemplo a seguir.



print "Quantos amigos quer fazer a verificação? "
quantAmigos = gets.chomp.to_i
nomes = []
distancias = []
soma = 0
for i in (0...quantAmigos)
  print "Nome: "
  nomes.push(gets.chomp)
  print "Distância em metros: "
  distancias.push(gets.chomp.to_f)
end
for i in (0...distancias.size)
  soma += distancias[i]
end
media = soma / distancias.size
puts "#{media.ceil(1)} m"
=end






















=begin
Leia o horário de início e o fim do jogo, em horas e minutos (hora inicial, minuto inicial, hora final, minuto final). Em seguida, imprima a duração do jogo, sabendo que o jogo pode começar em um dia e terminar em outro dia,

Obs.:Com um tempo máximo de jogo de 24 horas e o tempo mínimo do jogo de 1 minuto.

Entrada
Quatro números inteiros representando o tempo inicial e final do jogo.

Saída
Imprima a duração do jogo em horas e minutos, neste formato: "O JOGO DUROU XXX HORA(S) E YYY MINUTO(S)" . O que significa: o jogo durou XXX horas(s) e minutos YYY.



print "Que horas o jogo começou? "
startTimeHours = gets.chomp.to_i
print "Com quantos minutos? "
startTimeMinutes = gets.chomp.to_i
print "Que horas o jogo terminou? "
endTimeHours = gets.chomp.to_i
print "Com quantos minutos? "
endTimeMinutes = gets.chomp.to_i

if startTimeHours > endTimeHours
  amountHours = (endTimeHours + 24) - startTimeHours
else
  amountHours = endTimeHours - startTimeHours
end

if startTimeMinutes > endTimeMinutes
  amountMinutes = (endTimeMinutes + 60) - startTimeMinutes
  amountHours -= 1
else
  amountMinutes = endTimeMinutes - startTimeMinutes
end

puts "O jogo durou #{amountHours}H e #{amountMinutes}M"
=end


















=begin
Instruções
Dado um número determinar se é válido ou não pela fórmula luhn.

O algoritmo Luhn é uma fórmula simples de cheques usado para validar uma variedade de números de identificação, como números de cartão de crédito e números de seguro social canadenses.

A tarefa é verificar se uma determinada sequência é válida.

Validando um número
As cordas de comprimento 1 ou menos não são válidas. Os espaços são permitidos na entrada, mas devem ser despojados antes de verificar. Todos os outros caracteres não-dígitos são proibidos.

Exemplo 1: número de cartão de crédito válido
4539 3195 0343 6467
O primeiro passo do algoritmo Luhn é dobrar cada segundo dígito, começando pela direita. Vamos dobrar

4_3_ 3_9_ 0_4_ 6_6_
Se dobrar o número resulta em um número superior a 9, subtraia 9 do produto. Os resultados da nossa duplicação:

8569 6195 0383 3437
Então soma todos os dígitos:

8+5+6+9+6+1+9+5+0+3+8+3+3+4+3+7 = 80
Se a soma for igualmente divisível por 10, então o número é válido. Este número é válido!

Exemplo 2: número inválido do cartão de crédito
8273 1232 7352 0569
O dobro dos dois dígitos, começando pela direita

7253 2262 5312 0539
Soma os dígitos

7+2+5+3+2+2+6+2+5+3+1+2+0+5+3+9 = 57
57 não é igualmente divisível por 10, portanto este número não é válido.



print "Digite o número do seu cartão(sem espaço): "
number = gets.chomp
numbers = []
algorithm = []
sum = 0
for i in (0...number.size)
  numbers.push(number[i].to_i)
end
if numbers.size == 16
  for i in (0...numbers.size)
    if i == 0 || i == 2 || i == 4 || i == 6 || i == 8 || i == 10 || i == 12 || i == 14
      value = numbers[i] * 2
      if value > 9
        value -= 9
      end
      algorithm.push(value)
    else
      algorithm.push(numbers[i])
    end
  end    
else
  puts "Número do cartão errado!"
end
for i in (0...algorithm.size)
  sum += algorithm[i]
end
if sum % 10 == 0
  puts "Cartão válido"
else
  puts "Cartão inválido"
end
=end


















=begin
Dado um número, encontre a soma de todos os múltiplos únicos de números específicos até, mas não incluindo esse número.

Se listarmos todos os números naturais abaixo de 20 que são múltiplos de 3 ou 5, temos 3, 5, 6, 9, 10, 12, 15 e 18.

A soma desses múltiplos é 78.


print "Digite um número para saber a soma dos mútlipos de 3 ou 5, abaixo dele: "
num = gets.chomp.to_i
sum = 0
for i in (1...num)
  if i % 3 == 0 || i % 5 == 0
    sum += i
  end
end
puts sum
=end
















=begin
Crie uma class para cadastra uma pessoas, definindo seu nome, idade, cpf, rua, número, municipio, uf, telefone.
=end

class People
  
  def initialize(name, age, cpf, street, number, county, uf, phone)
    @name = name
    @age = age
    @cpf = cpf
    @street = street
    @number = number
    @county = county
    @uf = uf
    @phone = phone
  end

  def checkDocument 
    puts "Seus documentos estão certos? [S/N] "
    puts "Nome: #{@name}; Idade: #{@age}; CPF: #{@cpf}, Telefone: #{@phone}."
    puts "Rua: #{@street}; Nº: #{@number}; Estado: #{@county}; UF: #{@uf}."
    @reps = gets.chomp.upcase
    authenticate
  end

  def getDocument
  puts "<--------* Realize seu cadastro *-------->"
  print "Digite seu nome: "
  @name = gets.chomp
  print "Sua idade: "
  @age = gets.chomp.to_i
  print "Seu CPF: "
  @cpf = gets.chomp
  print "Seu telefone: "
  @phone = gets.chomp
  print "Sua Rua: "
  @street = gets.chomp
  print "Número da casa: "
  @number = gets.chomp
  print "Estado onde mora: "
  @county = gets.chomp
  print "O UF: "
  @uf = gets.chomp.upcase
  checkDocument
  end

  def authenticate
    if @reps == "S"
      puts "Ok, cadastro confirmado"
    else
      getDocument
    end
  end
  
end

puts "<--------* Realize seu cadastro *-------->"
print "Digite seu nome: "
name = gets.chomp
print "Sua idade: "
age = gets.chomp.to_i
print "Seu CPF: "
cpf = gets.chomp
print "Seu telefone: "
phone = gets.chomp
print "Sua Rua: "
street = gets.chomp
print "Número da casa: "
number = gets.chomp
print "Estado onde mora: "
county = gets.chomp
print "O UF: "
uf = gets.chomp.upcase

pessoa1 = People.new(name, age, cpf, street, number, county, uf, phone)
pessoa1.checkDocument