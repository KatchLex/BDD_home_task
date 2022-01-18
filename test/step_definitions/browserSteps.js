const { When, Then } = require('cucumber');
const { expect } = require('chai')

When('I open {string} url', function(url) {
  return browser.get(url);
});

Then(/^Page title should (not )?be "([^"]*)"$/, async function (notArg, title) {
    const pageTitle = await browser.getTitle();
    if (notArg) {
      expect(pageTitle).to.not.be.equal(title);
    } else {
    expect(pageTitle).to.be.equal(title);
    }
});

// When(/^I wait "([^"]*)" seconds$/, function (waitSeconds) {
//     return browser.sleep(waitSeconds * 1000);
// });