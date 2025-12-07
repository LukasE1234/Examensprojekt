from playwright.sync_api import Page, expect

class BasePage:
    def __init__(self, page: Page):
        self.page = page
        self.base_url = "https://tap-vt25-testverktyg.github.io/exam--reading-list/"

    def goto(self):
        self.page.goto(self.base_url, wait_until="domcontentloaded")

    def click_nav(self, test_id: str):
        self.page.get_by_test_id(test_id).click()

    def assert_visible(self, test_id: str):
        expect(self.page.get_by_test_id(test_id)).to_be_visible()

    def assert_class_visible(self, class_name: str):
        expect(self.page.locator(f"div.{class_name}")).to_be_visible()