# Created by Maria Monserrate at 08/09/2024
Feature: Registro de usuario
  Este feature es parte del challenge tecnico como parte del proceso de seleccion de Inlaze
  Background:
    Given Browser seleccionado
    Then Abrir la pagina test-qa de Inlaze en el browser seleccionado

  Scenario: Registros de usuario - CP001: Registro de usuario con datos validos
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    Then Ingresar el nombre "Juan Pérez" en el campo "Full name"
    Then Ingresar "juan.perez@example.com" en el campo "Email"
    Then Ingresar "Password123!" en el campo "Password"
    Then Confirmar la contrasena "Password123!" en el campo "Repeat your password"
    Then Click en el boton "SIGN UP"
    Then Redirigir a la pagina "Sign in" en la url "https://test-qa.inlaze.com/auth/sign-in"

  Scenario: Registros de usuario - CP002: Registro de usuario con nombre de solo una palabra
    When Hacer click en el enlace Sign up
    Then Verificar que se abre el formulario sign up en la url "https://test-qa.inlaze.com/auth/sign-up"
    Then Ingresar el nombre "Juan" en el campo "Full name"
    Then Ingresar "juan.perez@example.com" en el campo "Email"
    Then Ingresar "Password123!" en el campo "Password"
    Then Confirmar la contrasena "Password123!" en el campo "Repeat your password"
    Then Verificar que el boton "SIGN UP" no es clickeable