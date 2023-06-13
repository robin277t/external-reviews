const stringEvaluator = require("../src/App");

describe("Block 1: stringEvaluator returns for 1 term", () => {
  it("returns a string in an array", () => {
    expect(stringEvaluator("1")[0]).toBe("1");
  });
  it("returns a string and a number in an array", () => {
    expect(stringEvaluator("1")[1]).toBe(1.0);
  });
  it("returns a different string in an array", () => {
    expect(stringEvaluator("2")[0]).toBe("2");
  });
  it("returns a different string and a number in an array", () => {
    expect(stringEvaluator("2")[1]).toBe(2.0);
  });
});

describe("Block 2: stringEvluator with addition/subtraction of 2 terms", () => {
  it("returns 2 terms as a string at the start of the array", () => {
    expect(stringEvaluator("10 + 20")[0]).toBe("10 + 20");
  });
  it("returns 2 terms to be added together correctly", () => {
    expect(stringEvaluator("10 + 20")[1]).toBe(30.0);
  });
  it("returns 2 terms to be added together correctly", () => {
    expect(stringEvaluator("10 + 22.2")[1]).toBe(32.2);
  });
  it("returns 2 terms to be subtracted correctly", () => {
    expect(stringEvaluator("100 - 80")[1]).toBe(20.0);
  });
});
