# Created by Maria Monserrate at 08/09/2024
import time
from behave import *
from selenium import webdriver
from selenium.common import TimeoutException, WebDriverException
from selenium.webdriver.common.by import By


@when('Ingresar "{user_email}" en el campo "Email" en Sign in')
def step_impl(context, user_email):
    ingresar_email(context, user_email)


@step('Ingresar "{user_password}" en el campo "Password"')
def step_impl(context, user_password):
    (context.driver.find_element(
        By.XPATH, '/html/body/app-root/app-sign-in/main/section[1]/app-sign-in-form/form/div[2]/app-password/div/input')
     .send_keys(user_password))
    time.sleep(2)


@then('Click en el boton "SIGN IN"')
def step_impl(context):
    (context.driver.find_element(
        By.XPATH, "/html/body/app-root/app-sign-in/main/section[1]/app-sign-in-form/form/button")
     .click())
    time.sleep(2)


@then('Redirigir a la pagina "welcome to Lorem" en la url "{welcome_url}"')
def step_impl(context, welcome_url):
    time.sleep(2)
    get_url = context.driver.current_url
    if get_url == welcome_url:
        assert True
    else:
        assert False


@when('Click en el boton "SIGN IN"')
def step_impl(context):
    (context.driver.find_element(
        By.XPATH, "/html/body/app-root/app-sign-in/main/section[1]/app-sign-in-form/form/button")
     .click())
    time.sleep(2)


@then('Verificar que el boton "SIGN IN" no es clickeable')
def step_impl(context):
    not_clickable(context)


@when('Verificar que el boton "SIGN IN" no es clickeable')
def step_impl(context):
    not_clickable(context)


@then('Ingresar "{user_email}" en el campo "Email" en Sign in')
def step_impl(context, user_email):
    ingresar_email(context, user_email)


def not_clickable(context):
    try:
        context.driver.find_element(
            By.XPATH, "/html/body/app-root/app-sign-in/main/section[1]/app-sign-in-form/form/button").click()
        assert False
    except WebDriverException:
        print('Element is not clickable')
        assert True


def ingresar_email(context, user_email):
    (context.driver.find_element(
        By.XPATH, '/html/body/app-root/app-sign-in/main/section[1]/app-sign-in-form/form/div[1]/input')
     .send_keys(user_email))
    time.sleep(1)


@step('Verificar que el nombre de usuario es "{user_name}"')
def step_impl(context, user_name):
    user = context.driver.find_element(By.XPATH, '/html/body/app-root/app-panel-root/app-navbar/div/div[2]/div/div/h2').text
    assert user_name == user


@step("Click en avatar")
def step_impl(context):
    context.driver.find_element(
            By.XPATH, "/html/body/app-root/app-panel-root/app-navbar/div/div[2]/div/div/label/div/img").click()
    time.sleep(1)


@step('select "Logout"')
def step_impl(context):
    context.driver.find_element(
            By.XPATH, "/html/body/app-root/app-panel-root/app-navbar/div/div[2]/div/ul/li[3]/a").click()
    time.sleep(1)


@then('Then Redirigir a la pagina "Sign in" en la url "{signin_url}"')
def step_impl(context, signin_url):
    time.sleep(2)
    get_url = context.driver.current_url
    if get_url == signin_url:
        assert True
    else:
        assert False

