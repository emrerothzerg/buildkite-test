import nameFix from "./name.js";

test("emre -> should return emre", () => {
  expect(nameFix("emre")).toBe("emre");
});

test("EMRE -> should return emre", () => {
  expect(nameFix("EMRE")).toBe("emre");
});
