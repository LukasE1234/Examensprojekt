from playwright.sync_api import sync_playwright

def before_all(context):
    context.playwright = sync_playwright().start()
    context.browser = context.playwright.chromium.launch(headless=True)
    context.page = context.browser.new_page()
    # Global timeout 500 ms
    context.page.set_default_timeout(5000)

def after_all(context):
    context.page.close()
    context.browser.close()
    context.playwright.stop()