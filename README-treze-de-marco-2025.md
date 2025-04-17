# Diário de aula  - 13 de Março de 2025

- Criei repositório flutter
- baixei o sdk pra linux
- baixei as extensões pra linux
- rodei ele no linux
- hello world em flutter


### fundamentos do flutter

- multiplataforma
- widgets
- hot reload

### fundamentos do flutter

- parte da JVM
- orientação a objetos
- tipagem estática opcional

## Atividades aula 1

### 01) O que são variáveis? Qual é a sintaxe da declaração? Escreva o código de exemplo.
Variáveis são espaços na memória que armazenam valores que podem ser manipulados durante a execução do programa. Em Dart, é assim>

tipo nomeVariavel = valor;

String nome = "Maria";
int idade = 25;
double altura = 1.75;

var curso = "dartee";

### 02) Quais são os tipos de variáveis existentes em Dart? Explique a diferença entre os tipos.

int numero = 10;            // ints
double decimal = 10.5;      // doubles
num qualquerNumero = 15;    //  int ou double

String texto = "hello world";

bool ativo = true;

List<int> numeros = [1, 2, 3]; // list de inteiros

tbm tem dynamic, map e set

Tipos numéricos: int para inteiros, double para decimais, num para qualquer tipo numérico (que nem no js)
String: para texto
bool: para valores lógicos (verdadeiro/falso)
List: coleção ordenada de elementos
Map: coleção de pares chave-valor
Set: coleção de elementos únicos
dynamic: pode receber qualquer tipo e ser modificado durante a execução

### 03) O que é interpolação? Qual a sua função? Escreva o código de exemplo.

Interpolação é a técnica de inserir valores de variáveis dentro de strings. Em Dart, usa-se o símbolo $ para interpolação simples ou ${} para expressões.

### 04) Qual a diferença entre a declaração com e sem atribuição?

na declaração com atribuição a variável já recebe um valor inicial, já na sem atribuição a variável é declarada, mas não recebe valor inicial

### 05) Quais são os cuidados que devemos ter para definir o nome de uma variável?

tem q começar com letra minúscula ou sublinhado (_), n começar com números, n usar espaços ou caracteres especiais (exceto sublinhado) e usar camelCase

### 06) Quais são as regras de sintaxe para declarar uma variável?

tem q especificar o tipo ou usar var, final ou const, incluir o nome da variável (seguindo as regras de nomenclatura) e finalizar com ponto e vírgula (;)

### 07) Qual padrão devemos respeitar para definir nomes de variáveis? Escreva o código de exemplo.

camelCase

```
String nomeCompleto = "Helio Kamakawa"
```
### 08) O que é e para que serve a inferência de tipos? Escreva o código de exemplo.

capacidade do compilador de determinar automaticamente o tipo de uma variável com base no valor atribuído a ela

tipo assim:

```
var nome = "Maria";
```

### 09) Qual a diferença entre a definição explícita e a inferência de tipos? Em que contexto deve-se utilizar cada uma? Escreva o código de exemplo.

Definição explícita - declaramos o tipo manualmente, tipo assim tlg:

```
String nome = "Pedro";
```

Inferência de tipos - o compilador determina o tipo

```
var sobrenome = "Silva";
```

### 10) Pode-se afirmar que, a declaração com a inferência de tipos gera-se uma variável dinâmica? Justifique.

a inferência de tipos NÃO gera uma variável dinâmica pq quando usamos var para inferência de tipos, o Dart determina o tipo no momento da compilação baseado no valor q vc coloca nele isso pq ela só evita a necessidade de declarar explicitamente o tipo, mas o tipo ainda é definido e checado estaticamente

### 11) O que são variáveis dinâmicas? Quais cuidados devemos ter?

elas podem receber valores de qualquer tipo durante a execução do programa

pode ter bo por causa do risco de erros em tempo de execução, chamar métodos inexistentes e ferra com a manutenção e compreensão do código

### 12) Em dart, pode-se definir constantes de quais maneiras? Explique as diferenças e quando devemos utilizar cada uma.

da pra usar final e const

final -> nn pode alterar mas é em tempo de execução
const -> nn pode alterar tbm mas é em tempo de compilação

final eh bom usar pra DateTime.now() pq vc precisa executar esse cod primeiro pra daí colocar uma valor pra variavel

const eh bom pra constantes q nn vao mudar dps e pra mesma instancia no código todo


### 13, 14 e 15 feitos na pasta aula





