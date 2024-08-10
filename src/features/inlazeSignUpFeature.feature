# Created by Maria Monserrate at 08/09/2024
Feature: Registro de usuario
  Este feature es parte del challenge tecnico como parte del proceso de seleccion de Inlaze
  Background:
    Given Browser seleccionado
    Then Abrir la pagina test-qa de Inlaze en el browser seleccionado

  Scenario: Registros de usuario - CP001: Registro de usuario con datos validos
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    And Ingresar el nombre "Juan Pérez" en el campo "Full name"
    And Ingresar "juan.perez@example.com" en el campo "Email"
    And Ingresar "Password123!" en el campo "Password"
    And Confirmar la contrasena "Password123!" en el campo "Repeat your password"
    Then Click en el boton "SIGN UP"
    Then Redirigir a la pagina "Sign in" en la url "https://test-qa.inlaze.com/auth/sign-in"

  Scenario: Registros de usuario - CP002: Registro de usuario con nombre de solo una palabra
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    And Ingresar el nombre "Juan" en el campo "Full name"
    And Ingresar "juan.perez01@example.com" en el campo "Email"
    And Ingresar "Password123!" en el campo "Password"
    And Confirmar la contrasena "Password123!" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable

  Scenario: Registros de usuario - CP003: Registro de usuario con formato de email invalido
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    And Ingresar el nombre "Juan Pérez" en el campo "Full name"
    And Ingresar "juan.perez-example.com" en el campo "Email"
    And Ingresar "Password123!" en el campo "Password"
    And Confirmar la contrasena "Password123!" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar "juan.perez@examplecom" en el campo "Email"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar "12juan.perez@example.com" en el campo "Email"
    Then Verificar que el boton "SIGN UP" no es clickeable

  Scenario: Registros de usuario - CP004: Registro de usuario con email existente
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    And Ingresar el nombre "Juan Pérez" en el campo "Full name"
    # El email debe existir previamente en la BD
    And Ingresar "juan.perez@example.com" en el campo "Email"
    And Ingresar "Password123!" en el campo "Password"
    And Confirmar la contrasena "Password123!" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable

  Scenario: Registros de usuario - CP005: Registro de usuario con contrasena que no cumple requisitos
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    And Ingresar el nombre "Juan Pérez" en el campo "Full name"
    And Ingresar "pedro.perez@example.com" en el campo "Email"
    And Ingresar "Password1" en el campo "Password"
    And Confirmar la contrasena "Password1" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar "password123!" en el campo "Password"
    And Confirmar la contrasena "password123!" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar "PASSWORD123!" en el campo "Password"
    And Confirmar la contrasena "PASSWORD123!" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar "Pa12!" en el campo "Password"
    And Confirmar la contrasena "Pa12!" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable

  Scenario: Registros de usuario - CP006: Registro de usuario con contrasena y confirmacion no coincidentes
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    And Ingresar el nombre "Carmen Pérez" en el campo "Full name"
    And Ingresar "carmen.perez@example.com" en el campo "Email"
    And Ingresar "Password1123!" en el campo "Password"
    And Confirmar la contrasena "Password1123#" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable

  Scenario: Registros de usuario - CP007: Registro de usuario con campos obligatorios vacios
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar el nombre "Marcos Pérez" en el campo "Full name"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar "marcos.perez@example.com" en el campo "Email"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Ingresar "Password1123!" en el campo "Password"
    Then Verificar que el boton "SIGN UP" no es clickeable
    Then Confirmar la contrasena "Password1123!" en el campo "Repeat your password"
    Then Click en el boton "SIGN UP"
    Then Redirigir a la pagina "Sign in" en la url "https://test-qa.inlaze.com/auth/sign-in"


