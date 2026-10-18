# Lectura de Código y Trazas (soluciones)

> Cada tabla muestra el estado de las variables después de ejecutar cada instrucción relevante.

## Nivel 1: Variables y Expresiones Matemáticas

### Ejercicio 1.1
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

| Paso | Instrucción | Variables |
|---|---|---|
| 1 | `precio = 10` | `precio = 10` |
| 2 | `unidades = 3` | `precio = 10`, `unidades = 3` |
| 3 | `total = precio * unidades` | `total = 30` |
| 4 | `subtotal = total / 2` | `subtotal = 15.0` |
| 5 | `resto = total % 4` | `resto = 2` |

**Salida:** `30`, `15.0`, `2`.

### Ejercicio 1.2
```python
puntos = 100
puntos = puntos + 50
puntos = puntos * 2
puntos = puntos - 25
```

| Paso | Instrucción | `puntos` |
|---|---|---:|
| 1 | `puntos = 100` | 100 |
| 2 | `puntos = puntos + 50` | 150 |
| 3 | `puntos = puntos * 2` | 300 |
| 4 | `puntos = puntos - 25` | 275 |

**Salida:** `275`.

### Ejercicio 1.3
```python
a = 5
b = 2
c = a ** b
d = a // b
```

| Paso | Instrucción | Variables |
|---|---|---|
| 1 | `a = 5` | `a = 5` |
| 2 | `b = 2` | `a = 5`, `b = 2` |
| 3 | `c = a ** b` | `c = 25` |
| 4 | `d = a // b` | `d = 2` |

**Salida:** `25`, `2`.

### Ejercicio 1.4
```python
x = 10
y = 4
x = x + y
y = x - y
x = x - y
```

| Paso | Instrucción | `x` | `y` |
|---|---|---:|---:|
| 1 | `x = 10` | 10 | - |
| 2 | `y = 4` | 10 | 4 |
| 3 | `x = x + y` | 14 | 4 |
| 4 | `y = x - y` | 14 | 10 |
| 5 | `x = x - y` | 4 | 10 |

**Salida:** `4`, `10`. Se han intercambiado los valores.

### Ejercicio 1.5
```python
base = 4.0
altura = 3
area = (base * altura) / 2
perimetro = base * 3
```

| Paso | Instrucción | Variables |
|---|---|---|
| 1 | `base = 4.0` | `base = 4.0` |
| 2 | `altura = 3` | `altura = 3` |
| 3 | `area = (base * altura) / 2` | `area = 6.0` |
| 4 | `perimetro = base * 3` | `perimetro = 12.0` |

**Salida:** `area = 6.0`, de tipo `float`; `perimetro = 12.0`.

## Nivel 2: Booleanos y Operadores Lógicos

### Ejercicio 2.1
```python
edad = 17
tengo_carnet = True
puede_conducir = (edad >= 18) and tengo_carnet
es_menor = edad < 18
```

| Paso | Instrucción | Variables |
|---|---|---|
| 1 | `edad = 17` | `edad = 17` |
| 2 | `tengo_carnet = True` | `tengo_carnet = True` |
| 3 | `puede_conducir = ...` | `puede_conducir = False` |
| 4 | `es_menor = edad < 18` | `es_menor = True` |

**Salida:** `False`, `True`.

### Ejercicio 2.2
```python
saldo = 50
tiene_bono = False
es_socio = True
acceso_vip = tiene_bono or (saldo > 100)
acceso_normal = es_socio and not tiene_bono
```

| Paso | Instrucción | Variables nuevas |
|---|---|---|
| 1 | `saldo = 50` | `saldo = 50` |
| 2 | `tiene_bono = False` | `tiene_bono = False` |
| 3 | `es_socio = True` | `es_socio = True` |
| 4 | `acceso_vip = ...` | `acceso_vip = False` |
| 5 | `acceso_normal = ...` | `acceso_normal = True` |

**Salida:** `False`, `True`.

### Ejercicio 2.3
```python
a = True
b = False
c = not b
d = a and (b or c)
```

| Paso | Instrucción | Variables |
|---|---|---|
| 1 | `a = True` | `a = True` |
| 2 | `b = False` | `b = False` |
| 3 | `c = not b` | `c = True` |
| 4 | `d = a and (b or c)` | `d = True` |

**Salida:** `True`, `True`.

### Ejercicio 2.4
```python
nivel = 5
vidas = 0
invencible = True
sigue_vivo = (vidas > 0) or invencible
pasa_nivel = (nivel >= 5) and sigue_vivo
```

| Paso | Instrucción | Variables nuevas |
|---|---|---|
| 1 | `nivel = 5` | `nivel = 5` |
| 2 | `vidas = 0` | `vidas = 0` |
| 3 | `invencible = True` | `invencible = True` |
| 4 | `sigue_vivo = ...` | `sigue_vivo = True` |
| 5 | `pasa_nivel = ...` | `pasa_nivel = True` |

**Salida:** `True`, `True`.

### Ejercicio 2.5
```python
x = 10
resultado = not (x == 10) or (x < 20 and x != 15)
```

| Paso | Instrucción | Variables |
|---|---|---|
| 1 | `x = 10` | `x = 10` |
| 2 | `x == 10` | `True` |
| 3 | `not (x == 10)` | `False` |
| 4 | `x < 20 and x != 15` | `True` |
| 5 | `False or True` | `resultado = True` |

**Salida:** `True`.

## Nivel 3: Condicional Simple (`if`)

### Ejercicio 3.1
```python
temperatura = 32
alerta = "Normal"
if temperatura > 30:
    alerta = "Calor"
if temperatura > 40:
    alerta = "Peligro"
```

| Paso | Condición o instrucción | Variables |
|---|---|---|
| 1 | `temperatura = 32` | `temperatura = 32` |
| 2 | `alerta = "Normal"` | `alerta = "Normal"` |
| 3 | `temperatura > 30` es `True` | `alerta = "Calor"` |
| 4 | `temperatura > 40` es `False` | `alerta = "Calor"` |

**Salida:** `Calor`. La segunda condición sí se evalúa, pero su bloque no se ejecuta.

### Ejercicio 3.2
```python
puntuacion = 10
if puntuacion > 5:
    puntuacion = puntuacion + 5
if puntuacion > 12:
    puntuacion = puntuacion * 2
```

| Paso | Condición o instrucción | `puntuacion` |
|---|---|---:|
| 1 | `puntuacion = 10` | 10 |
| 2 | Primer `if`: `10 > 5` | 15 |
| 3 | Segundo `if`: `15 > 12` | 30 |

**Salida:** `30`.

### Ejercicio 3.3
```python
stock = 3
mensaje = "Disponible"
if stock == 0:
    mensaje = "Agotado"
if stock < 5:
    mensaje = "Últimas unidades"
```

| Paso | Condición o instrucción | Variables |
|---|---|---|
| 1 | Inicialización | `stock = 3`, `mensaje = "Disponible"` |
| 2 | `stock == 0` es `False` | `mensaje = "Disponible"` |
| 3 | `stock < 5` es `True` | `mensaje = "Últimas unidades"` |

**Salida:** `Últimas unidades`.

### Ejercicio 3.4
```python
monedas = 12
llaves = 1
if monedas >= 10:
    monedas = monedas - 10
    llaves = llaves + 1
if monedas >= 10:
    monedas = monedas - 10
    llaves = llaves + 1
```

| Paso | Condición o instrucción | `monedas` | `llaves` |
|---|---|---:|---:|
| 1 | Inicialización | 12 | 1 |
| 2 | Primer bloque | 2 | 2 |
| 3 | Segundo `if`: `2 >= 10` es `False` | 2 | 2 |

**Salida:** `2`, `2`.

### Ejercicio 3.5
```python
descuento = 0
vip = True
compra = 120
if vip:
    descuento = descuento + 10
if compra > 100:
    descuento = descuento + 15
```

| Paso | Condición o instrucción | `descuento` |
|---|---|---:|
| 1 | Inicialización | 0 |
| 2 | `vip` es `True` | 10 |
| 3 | `compra > 100` es `True` | 25 |

**Salida:** `25`.

## Nivel 4: Condicionales Compuestas (`if` / `else`)

### Ejercicio 4.1
```python
hora = 20
if hora < 15:
    saludo = "Buenos días"
else:
    saludo = "Buenas tardes"
```

| Paso | Condición o instrucción | Variables |
|---|---|---|
| 1 | `hora = 20` | `hora = 20` |
| 2 | `hora < 15` es `False` | `saludo = "Buenas tardes"` |

**Salida:** `Buenas tardes`.

### Ejercicio 4.2
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

| Paso | Condición o instrucción | Variables |
|---|---|---|
| 1 | Inicialización | `precio = 80`, `descuento = 0` |
| 2 | `precio > 100` es `False` | `descuento = 5` |
| 3 | `precio_final = precio - descuento` | `precio_final = 75` |

**Salida:** `75`. No se imprime `Descuento aplicado`.

### Ejercicio 4.3
```python
numero = 7
if numero % 2 == 0:
    tipo = "Par"
else:
    tipo = "Impar"
```

| Paso | Condición o instrucción | Variables |
|---|---|---|
| 1 | `numero = 7` | `numero = 7` |
| 2 | `7 % 2 == 0` es `False` | `tipo = "Impar"` |

**Salida:** `Impar`.

### Ejercicio 4.4
```python
usuario_correcto = "admin"
clave_correcta = "1234"
user_input = "admin"
pass_input = "0000"
if user_input == usuario_correcto and pass_input == clave_correcta:
    estado = "Acceso concedido"
else:
    estado = "Acceso denegado"
```

| Paso | Condición o instrucción | Variables |
|---|---|---|
| 1 | Valores iniciales | usuario correcto: `admin`; clave correcta: `1234` |
| 2 | Entradas | usuario: `admin`; clave: `0000` |
| 3 | La condición combinada es `False` | `estado = "Acceso denegado"` |

**Salida:** `Acceso denegado`.

### Ejercicio 4.5
```python
velocidad = 120
limite = 100
if velocidad <= limite:
    multa = 0
else:
    exceso = velocidad - limite
    multa = exceso * 10
```

| Paso | Condición o instrucción | Variables |
|---|---|---|
| 1 | Inicialización | `velocidad = 120`, `limite = 100` |
| 2 | `velocidad <= limite` es `False` | `exceso = 20` |
| 3 | `multa = exceso * 10` | `multa = 200` |

**Salida:** `200`.
