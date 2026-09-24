# Lectura de Código y Trazas (CPU Humana)

## Lectura de Código y Trazas (¿Qué hace el ordenador?)

> **Instrucciones:** No uses el ordenador. Lee el código en papel, sigue el flujo de ejecución paso a paso y responde a lo que se pide en cada reto.

---

### Nivel 1: Variables y Expresiones Matemáticas

#### Ejercicio 1.1
```python
precio = 10
unidades = 3
total = precio * unidades
subtotal = total / 2
resto = total % 4

print(total)
print(subtotal)
print(resto)
```
* **Reto:** Indica qué valor exacto se imprime en cada línea. Pon atención al tipo de dato de `subtotal`.

---

#### Ejercicio 1.2
```python
puntos = 100
puntos = puntos + 50
puntos = puntos * 2
puntos = puntos - 25

print(puntos)
```
* **Reto:** Crea una tabla de seguimiento con el valor de la variable `puntos` tras ejecutar cada línea e indica el resultado final.

---

#### Ejercicio 1.3
```python
a = 5
b = 2
c = a ** b
d = a // b

print(c)
print(d)
```
* **Reto:** Determina las salidas sabiendo que `**` representa la potencia y `//` la división entera.

---

#### Ejercicio 1.4
```python
x = 10
y = 4
x = x + y
y = x - y
x = x - y

print(x)
print(y)
```
* **Reto:** Traza paso a paso los valores de `x` e `y`. ¿Qué ha ocurrido finalmente entre los valores de ambas variables?

---

#### Ejercicio 1.5
```python
base = 4.0
altura = 3
area = (base * altura) / 2
perimetro = base * 3

print(area)
print(perimetro)
```
* **Reto:** ¿Qué valor final se imprime para `area` y de qué tipo de dato es (`int` o `float`)?

---

### Nivel 2: Booleanos y Operadores Lógicos

#### Ejercicio 2.1
```python
edad = 17
tengo_carnet = True

puede_conducir = (edad >= 18) and tengo_carnet
es_menor = edad < 18

print(puede_conducir)
print(es_menor)
```
* **Reto:** ¿Qué valores booleanos (`True` o `False`) se guardan e imprimen para `puede_conducir` y `es_menor`?

---

#### Ejercicio 2.2
```python
saldo = 50
tiene_bono = False
es_socio = True

acceso_vip = tiene_bono or (saldo > 100)
acceso_normal = es_socio and not tiene_bono

print(acceso_vip)
print(acceso_normal)
```
* **Reto:** Resuelve las expresiones y determina la salida de `acceso_vip` y `acceso_normal`.

---

#### Ejercicio 2.3
```python
a = True
b = False
c = not b
d = a and (b or c)

print(c)
print(d)
```
* **Reto:** Evalúa las operaciones lógicas paso a paso respetando los paréntesis para hallar `d`.

---

#### Ejercicio 2.4
```python
nivel = 5
vidas = 0
invencible = True

sigue_vivo = (vidas > 0) or invencible
pasa_nivel = (nivel >= 5) and sigue_vivo

print(sigue_vivo)
print(pasa_nivel)
```
* **Reto:** Evalúa si el jugador logra pasar de nivel analizando las dos variables booleanas.

---

#### Ejercicio 2.5
```python
x = 10
resultado = not (x == 10) or (x < 20 and x != 15)

print(resultado)
```
* **Reto:** Aplica la prioridad de operadores (`not`, `and`, `or`) para encontrar el resultado final.

---

### Nivel 3: Condicional Simple (`if`)

#### Ejercicio 3.1
```python
temperatura = 32
alerta = "Normal"

if temperatura > 30:
    alerta = "Calor"

if temperatura > 40:
    alerta = "Peligro"

print(alerta)
```
* **Reto:** ¿Qué texto se imprime al final? ¿Se evalúa la segunda condición?

---

#### Ejercicio 3.2
```python
puntuacion = 10

if puntuacion > 5:
    puntuacion = puntuacion + 5

if puntuacion > 12:
    puntuacion = puntuacion * 2

print(puntuacion)
```
* **Reto:** Sigue el valor acumulado de `puntuacion`. ¿Entra el programa dentro del segundo `if`?

---

#### Ejercicio 3.3
```python
stock = 3
mensaje = "Disponible"

if stock == 0:
    mensaje = "Agotado"

if stock < 5:
    mensaje = "Últimas unidades"

print(mensaje)
```
* **Reto:** Sigue el flujo del código: ¿cuál es el texto final guardado en la variable `mensaje`?

---

#### Ejercicio 3.4
```python
monedas = 12
llaves = 1

if monedas >= 10:
    monedas = monedas - 10
    llaves = llaves + 1

if monedas >= 10:
    monedas = monedas - 10
    llaves = llaves + 1

print(monedas)
print(llaves)
```
* **Reto:** Haz la traza paso a paso del valor de `monedas` y `llaves` tras pasar por ambos bloques.

---

#### Ejercicio 3.5
```python
descuento = 0
vip = True
compra = 120

if vip:
    descuento = descuento + 10

if compra > 100:
    descuento = descuento + 15

print(descuento)
```
* **Reto:** ¿Cuál es el valor final acumulado en la variable `descuento`?

---

### Nivel 4: Condicionales Compuestas (`if` / `else`)

#### Ejercicio 4.1
```python
hora = 20

if hora < 15:
    saludo = "Buenos días"
else:
    saludo = "Buenas tardes"

print(saludo)
```
* **Reto:** ¿Qué mensaje se imprime por pantalla?

---

#### Ejercicio 4.2
```python
precio = 80
descuento = 0

if precio > 100:
    descuento = 20
    print("Descuento aplicado")
else:
    descuento = 5

precio_final = precio - descuento
print(precio_final)
```
* **Reto:** Escribe la salida completa que generaría la consola al ejecutar este programa.

---

#### Ejercicio 4.3
```python
numero = 7

if numero % 2 == 0:
    tipo = "Par"
else:
    tipo = "Impar"

print(tipo)
```
* **Reto:** Evalúa la operación de módulo `%` y determina qué valor adopta la variable `tipo`.

---

#### Ejercicio 4.4
```python
usuario_correcto = "admin"
clave_correcta = "1234"

user_input = "admin"
pass_input = "0000"

if user_input == usuario_correcto and pass_input == clave_correcta:
    estado = "Acceso concedido"
else:
    estado = "Acceso denegado"

print(estado)
```
* **Reto:** Evalúa la condición lógica combinada y determina el valor final de `estado`.

---

#### Ejercicio 4.5
```python
velocidad = 120
limite = 100

if velocidad <= limite:
    multa = 0
else:
    exceso = velocidad - limite
    multa = exceso * 10

print(multa)
```
* **Reto:** Calcula el valor numérico que toma la variable `multa`.
