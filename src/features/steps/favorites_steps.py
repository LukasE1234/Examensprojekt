from behave import when, then
from playwright.sync_api import expect

@when('jag markerar boken "{title}" som favorit')
def step_impl(context, title):
    star = context.page.get_by_test_id(f"star-{title}")
    expect(star).to_be_visible(timeout=2000)
    star.click()

@when('jag avmarkerar boken "{title}" som favorit')
def step_impl(context, title):
    star = context.page.get_by_test_id(f"star-{title}")
    expect(star).to_be_visible(timeout=2000)
    star.click()

@then('boken "{title}" ska synas i mina böcker')
def step_impl(context, title):
    expect(context.page.get_by_text(title)).to_be_visible(timeout=2000)

@then('boken "{title}" ska inte längre synas i mina böcker')
def step_impl(context, title):
    expect(context.page.get_by_text(title)).not_to_be_visible(timeout=2000)