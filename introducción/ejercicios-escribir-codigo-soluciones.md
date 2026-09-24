# Sesión 1: Escritura de Código en Python (soluciones)

## PARTE 2: Ejercicios de Escritura de Código

> Después de cada enunciado aparece una posible solución. Puede haber otras soluciones correctas.

### Nivel 1: Variables y Matemáticas

#### Ejercicio 2.1.1
Declara `precio_item = 25.0`, `cantidad = 4` e `iva = 0.21`. Calcula el importe total con IVA y guárdalo en `total`.

```python
precio_item = 25.0
cantidad = 4
iva = 0.21
total = precio_item * cantidad * (1 + iva)
```

#### Ejercicio 2.1.2
Asigna la base `10` y la altura `5`. Calcula el área de un triángulo y guárdala en `area`.

```python
base = 10
altura = 5
area = (base * altura) / 2
```

#### Ejercicio 2.1.3
Declara las notas `6`, `8` y `7`. Calcula la nota media y guárdala en `nota_final`.

```python
nota1 = 6
nota2 = 8
nota3 = 7
nota_final = (nota1 + nota2 + nota3) / 3
```

#### Ejercicio 2.1.4
Declara `distancia_km = 15` y conviértela a metros en `distancia_m`.

```python
distancia_km = 15
distancia_m = distancia_km * 1000
```

#### Ejercicio 2.1.5
Declara `minutos = 135` y calcula `horas` y `minutos_restantes` usando `//` y `%`.

```python
minutos = 135
horas = minutos // 60
minutos_restantes = minutos % 60
```

---

### Nivel 2: Booleanos y Lógica

#### Ejercicio 2.2.1
Declara `nota_examen = 6` y `asistencia = 85`. Crea `aprobado`.

```python
nota_examen = 6
asistencia = 85
aprobado = nota_examen >= 5 and asistencia >= 80
```

#### Ejercicio 2.2.2
Asigna `edad = 16` y `acompanado = True`. Crea `entra_cine`.

```python
edad = 16
acompanado = True
entra_cine = edad >= 18 or acompanado
```

#### Ejercicio 2.2.3
Declara `es_finde = False` y `tengo_deberes = True`. Crea `puedo_jugar`.

```python
es_finde = False
tengo_deberes = True
puedo_jugar = not tengo_deberes or es_finde
```

#### Ejercicio 2.2.4
Crea `saldo = 30` y `precio_producto = 50`. Calcula `compra_posible`.

```python
saldo = 30
precio_producto = 50
compra_posible = saldo >= precio_producto
```

#### Ejercicio 2.2.5
Declara `bateria = 15` y `cargando = False`. Genera `alerta_bateria`.

```python
bateria = 15
cargando = False
alerta_bateria = bateria < 20 and not cargando
```

---

### Nivel 3: Condicional Simple (`if`)

#### Ejercicio 2.3.1
Crea `vidas = 1`. Si las vidas son `0`, cambia `estado` a `"Game Over"`.

```python
vidas = 1
estado = "En juego"

if vidas == 0:
    estado = "Game Over"
```

#### Ejercicio 2.3.2
Declara `puntos = 120`. Si supera `100`, suma `50` puntos.

```python
puntos = 120

if puntos > 100:
    puntos = puntos + 50
```

#### Ejercicio 2.3.3
Crea `temperatura = 38`. Si es mayor que `37`, muestra `"Fiebre"`.

```python
temperatura = 38

if temperatura > 37:
    print("Fiebre")
```

#### Ejercicio 2.3.4
Declara `velocidad = 95`. Si supera `90`, incrementa `contador_multas`.

```python
velocidad = 95
contador_multas = 0

if velocidad > 90:
    contador_multas = contador_multas + 1
```

#### Ejercicio 2.3.5
Asigna `edad = 18`. Si es mayor o igual que `18`, crea `mayoria_edad = True`.

```python
edad = 18
mayoria_edad = False

if edad >= 18:
    mayoria_edad = True
```

---

### Nivel 4: Condicionales Compuestas (`if` / `else`)

#### Ejercicio 2.4.1
Crea `temperatura_agua = 45` y asigna `estado_agua` según alcance `100` grados.

```python
temperatura_agua = 45

if temperatura_agua >= 100:
    estado_agua = "Herviendo"
else:
    estado_agua = "Líquida"
```

#### Ejercicio 2.4.2
Declara `edad = 15` y asigna el precio de entrada según sea mayor de edad.

```python
edad = 15

if edad >= 18:
    precio_entrada = 10
else:
    precio_entrada = 5
```

#### Ejercicio 2.4.3
Crea `numero = -3` y asigna `signo` según sea positivo o negativo.

```python
numero = -3

if numero >= 0:
    signo = "Positivo"
else:
    signo = "Negativo"
```

#### Ejercicio 2.4.4
Asigna `intentos = 3`. Si es mayor que `0`, resta `1`; si no, muestra el mensaje.

```python
intentos = 3

if intentos > 0:
    intentos = intentos - 1
else:
    print("Cuenta bloqueada")
```

#### Ejercicio 2.4.5
Declara `pago_realizado = True` y asigna `acceso` según su valor.

```python
pago_realizado = True

if pago_realizado:
    acceso = "Permitido"
else:
    acceso = "Denegado"
```
