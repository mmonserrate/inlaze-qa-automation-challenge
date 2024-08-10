# Created by Maria Monserrate at 08/09/2024
import time
from behave import *
from selenium import webdriver
from selenium.common import TimeoutException, WebDriverException
from selenium.webdriver.common.by import By


@given('Browser seleccionado')
def test_define_browser_driver(context):
    if context.config.userdata.get('browser') == "chrome":
        context.options = webdriver.ChromeOptions()
        # Agregar esta opcion a chromeoptions para evitar problemas de certificados
        context.options.add_experimental_option('excludeSwitches', ['enable-logging'])
        # Agregar esta opcion para evitar problemas al abrir/cerrar pestanas o ventanas
        context.options.add_argument("--disable-blink-features=AutomationControlled")
        context.driver = webdriver.Chrome(options=context.options)

    elif context.config.userdata.get('browser') == "firefox":
        context.options = webdriver.FirefoxOptions()
        # Agregar esta opcion para evitar problemas al abrir/cerrar pestanas o ventanas
        context.options.add_argument("--disable-blink-features=AutomationControlled")
        context.driver = webdriver.Firefox(options=context.options)

    elif context.config.userdata.get('browser') == "safari":
        context.options = webdriver.SafariOptions()
        # Agregar esta opcion para evitar problemas al abrir/cerrar pestanas o ventanas
        context.options.add_argument("--disable-blink-features=AutomationControlled")
        context.options = webdriver.Safari(options=context.options)


@then("Abrir la pagina test-qa de Inlaze en el browser seleccionado")
def step_impl(context):
    context.driver.get('https://test-qa.inlaze.com')
    # Se agrega una espera activa para dar oportunidad al browser de cargar la pagina completamente, incluyendo xpaths
    context.driver.implicitly_wait(30)


@when('Hacer click en el enlace Sign up')
def step_impl(context):
    time.sleep(2)
    (context.driver.find_element(By.XPATH, "/html/body/app-root/app-sign-in/main/section[1]/app-sign-in-form/span/a")
     .click())
    time.sleep(2)


@then('Verificar que se abre el formulario sign up en la url "{signup_url}"')
def step_impl(context, signup_url):
    get_url = context.driver.current_url
    if get_url == signup_url:
        assert True
    else:
        assert False


@then('Ingresar el nombre "{name}" en el campo "Full name"')
def step_impl(context, name):
    (context.driver.find_element(
        By.XPATH,'/html/body/app-root/app-sign-up/main/section[2]/app-sign-up-form/form/div[1]/input')
     .send_keys(name))
    time.sleep(1)


@then('Ingresar "{new_email}" en el campo "Email"')
def step_impl(context, new_email):
    (context.driver.find_element(
        By.XPATH,'/html/body/app-root/app-sign-up/main/section[2]/app-sign-up-form/form/div[2]/input')
     .send_keys(new_email))
    time.sleep(1)


@then('Ingresar "{new_password}" en el campo "Password"')
def step_impl(context, new_password):
    (context.driver.find_element(
        By.XPATH,'/html/body/app-root/app-sign-up/main/section[2]/app-sign-up-form/form/div[3]/app-password/div/input')
     .send_keys(new_password))
    time.sleep(1)


@then('Confirmar la contrasena "{new_password}" en el campo "Repeat your password"')
def step_impl(context, new_password):
    (context.driver.find_element(
        By.XPATH,'/html/body/app-root/app-sign-up/main/section[2]/app-sign-up-form/form/div[4]/app-password/div/input')
     .send_keys(new_password))
    time.sleep(1)


@then('Click en el boton "SIGN UP"')
def step_impl(context):
    (context.driver.find_element(
        By.XPATH, "/html/body/app-root/app-sign-up/main/section[2]/app-sign-up-form/form/button")
     .click())
    time.sleep(2)


@then('Redirigir a la pagina "Sign in" en la url "{signin_url}"')
def step_impl(context, signin_url):
    get_url = context.driver.current_url
    if get_url == signin_url:
        assert True
    else:
        assert False


@then('Verificar que el boton "SIGN UP" no es clickeable')
def step_impl(context):
    try:
        context.driver.find_element(
            By.XPATH, "/html/body/app-root/app-sign-up/main/section[2]/app-sign-up-form/form/button").click()
        assert False
    except WebDriverException:
        print('Element is not clickable')
        assert True

