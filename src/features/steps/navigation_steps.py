from behave import then

@then("katalogvyn ska visas")
def step_impl(context):
    context.base.assert_visible("star-Hur man tappar bort sin TV-fjärr 10 gånger om dagen")

@then("lägg-till-bok-vyn ska visas")
def step_impl(context):
    context.base.assert_visible("add-input-title")

@then("mina-böcker-vyn ska visas")
def step_impl(context):
    context.base.assert_class_visible("favorites")