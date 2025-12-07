from behave import given, when
from pages.base_page import BasePage

@given("jag öppnar startsidan")
def step_impl(context):
    context.base = BasePage(context.page)
    context.base.goto()

@when('jag klickar på "{test_id}"')
def step_impl(context, test_id):
    context.base.click_nav(test_id)