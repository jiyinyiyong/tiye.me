globalThis.window = {
  innerWidth: 1280,
  location: { host: "localhost" },
};

const calcitCore = await import("../js-out/calcit.core.mjs");
const { comp_container: compContainer } = await import(
  "../js-out/app.comp.container.mjs"
);

const rendered = compContainer(calcitCore._$n__$M_());

if (rendered?.constructor?.name !== "CalcitStructValue") {
  throw new Error("comp-container did not return a Respo component");
}

console.log("generated-runtime-smoke-ok");
