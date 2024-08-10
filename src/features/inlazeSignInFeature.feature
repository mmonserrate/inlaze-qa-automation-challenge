# Created by Maria Monserrate at 08/09/2024
Feature: Registro de usuario
  Este feature es parte del challenge tecnico como parte del proceso de seleccion de Inlaze
  Background:
    Given Browser seleccionado
    Then Abrir la pagina test-qa de Inlaze en el browser seleccionado

  Scenario: Login de usuario - CP008: Login de usuario con datos validos
    When Ingresar "juan.perez@example.com" en el campo "Email" en Sign in
    And Ingresar "Password123!" en el campo "Password"
    Then Click en el boton "SIGN IN"
    Then Redirigir a la pagina "welcome to Lorem" en la url "https://test-qa.inlaze.com/panel"

  Scenario: Login de usuario - CP009: Login de usuario con campos vacios
    When Verificar que el boton "SIGN IN" no es clickeable
    Then Ingresar "juan.perez@example.com" en el campo "Email" en Sign in
    Then Verificar que el boton "SIGN IN" no es clickeable


  Scenario: Login de usuario - CP010: Login de usuario, mostrar nombre de usuario
    When Ingresar "juan.perez@example.com" en el campo "Email" en Sign in
    And Ingresar "Password123!" en el campo "Password"
    Then Click en el boton "SIGN IN"
    Then Redirigir a la pagina "welcome to Lorem" en la url "https://test-qa.inlaze.com/panel"
    And Verificar que el nombre de usuario es "Juan Pérez"


  Scenario: Login de usuario - CP011: Login de usuario, mostrar nombre de usuario
    When Ingresar "juan.perez@example.com" en el campo "Email" en Sign in
    And Ingresar "Password123!" en el campo "Password"
    Then Click en el boton "SIGN IN"
    Then Redirigir a la pagina "welcome to Lorem" en la url "https://test-qa.inlaze.com/panel"
    And Click en avatar
    And select "Logout"
    Then Then Redirigir a la pagina "Sign in" en la url "https://test-qa.inlaze.com/auth/sign-in"