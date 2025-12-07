from behave import when, then
from playwright.sync_api import expect

@when('jag fyller i titel "{title}" och författare "{author}"')
def step_impl(context, title, author):
    context.page.get_by_test_id("add-input-title").fill(title)
    context.page.get_by_test_id("add-input-author").fill(author)

@when('jag klickar på "add-submit"')
def step_impl(context):
    context.page.get_by_test_id("add-submit").click()

@then('boken "{title}" ska synas i katalogen')
def step_impl(context, title):
    context.page.get_by_test_id("catalog").click()
    expect(context.page.get_by_text(title)).to_be_visible(timeout=2000)

@when('jag fyller i titel "" och författare "{author}"')
def step_impl(context, author):
    context.page.get_by_test_id("add-input-title").fill("")
    context.page.get_by_test_id("add-input-author").fill(author)

@when('jag fyller i titel "{title}" och författare ""')
def step_impl(context, title):
    context.page.get_by_test_id("add-input-title").fill(title)
    context.page.get_by_test_id("add-input-author").fill("")

@then('knappen "{test_id}" ska vara inaktiv')
def step_impl(context, test_id):
    button = context.page.get_by_test_id(test_id)
    expect(button).to_be_disabled()