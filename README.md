
# Inlaze QA Automation Engineer Challenge

Este Challenge es parte del proceso de selección para QA Automation Engineer en Inlaze

## Tecnologías implementadas:
* Python v3.9.6
* pip v21.1.3
* Behave v1.2.6
* selenium v4.23.1



## Instalacion

Descargar e instalar el interprete de python desde el siguiente link:

```bash
  https://www.python.org/downloads/
  Seguir las instrucciones de intalación - version probada en desarrollo: 3.9.6
```

Instalar el manejador de paquetes PIP siguiendo el tutorial de instalación desde:

```bash
https://pip.pypa.io/en/stable/installation/
```



## Corriendo las pruebas localmente

Clonar el proyecto desde gitlab (Requiere tener git instalado - https://git-scm.com/downloads)

```bash
  git clone https://github.com/mmonserrate/inlaze-qa-automation-challenge.git
```

Ir al directorio de fuentes del proyecto 

```bash
  cd inlaze-qa-automation-challenge/src
```
Moverse al branch master

```bash
  git checkout master
```
Instalar behave

```bash
pip install behave
```

Instalar selenium

```bash
pip install selenium
```

Instalar las bibliotecas de Python requeridas por el proyecto

```bash
pip download -r requirements.txt
```

Para correr las pruebas se debe ejecutar el siguiente comando:
```bash
  $ python test_inlaze_challenge.py --browser [chrome|firefox|safari] --feature  [SignUp|SignIn|All]
```
Donde browser es nombre del browser donde se desea correr la prueba y feature es el nombre del feature. Los valores posibles son:
* browser
  - chrome
  - firefox
  - safari (Disponible sólo para MacOS)
* feature
  - SignUp -> Registro de Usuario
  - SignIn -> Login de Usuario
  - All -> Se ejecutan las pruebas de ambos features

**Examples:**

```bash
  $ python test_inlaze_challenge.py --browser chrome --feature SignUp
```
```bash
  $ python test_inlaze_challenge.py --browser firefox --feature All
```

## Features y casos considerados en estas pruebas 
1. **Registro de Usuario:**
    - El formulario debe permitir registrar un usuario con nombre, email y una contraseña.
    - El campo de nombre debe contener mínimo 2 palabras (primer nombre y apellido).
    - El email debe cumplir con el estándar de una dirección de correo electrónico y ser único en la base de datos.
    - La contraseña debe tener al menos 8 caracteres, incluyendo una mayúscula, una minúscula, un número y un carácter especial.
    - El formulario no debe ser enviado hasta que todos los campos obligatorios estén completos.
    - La contraseña debe ser ingresada dos veces y el sistema debe informar al usuario si ambas coinciden.
2. **Login de Usuario:**
    - El usuario debe poder loguearse con el email y la contraseña registrados.
    - El formulario de login no debe ser enviado hasta que todos los campos estén diligenciados.
    - Al ingresar a la plataforma, debe mostrarse el nombre del usuario.
    - La plataforma debe permitir al usuario cerrar la sesión.

## Casos de prueba y reporte de bugs
Se incluyen los siguientes archivos como parte de la ejecución de las pruebas funcionales y automatizadas:
* CP-LOGIN-USUARIO.xlsx
* CP-REGISTRO-USUARIO.xlsx
* REPORTE-BUGS.docx


## Authors

- [@mmonserrate](https://www.github.com/mmonserrate)

