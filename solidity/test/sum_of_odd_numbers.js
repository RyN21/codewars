const SumOfOddNumbers = artifacts.require('SumOfOddNumbers');

const { deployed } = artifacts.require("Kata");
contract('Sum of odd numbers', function() {
  it("basic tests", async function() {
    const d = await deployed();
    assert.equal(await d.rowSumOddNumbers.call(1).valueOf(), 1);
    assert.equal(await d.rowSumOddNumbers.call(2).valueOf(), 8);
    assert.equal(await d.rowSumOddNumbers.call(13).valueOf(), 2197);
    assert.equal(await d.rowSumOddNumbers.call(19).valueOf(), 6859);
    assert.equal(await d.rowSumOddNumbers.call(41).valueOf(), 68921);
    assert.equal(await d.rowSumOddNumbers.call(42).valueOf(), 74088);
    assert.equal(await d.rowSumOddNumbers.call(74).valueOf(), 405224);
    assert.equal(await d.rowSumOddNumbers.call(86).valueOf(), 636056);
    assert.equal(await d.rowSumOddNumbers.call(93).valueOf(), 804357);
    assert.equal(await d.rowSumOddNumbers.call(101).valueOf(), 1030301);
  });
});
