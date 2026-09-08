import assert from "node:assert/strict";

globalThis.window = { innerWidth: 1280, location: { host: "localhost" } };

const core = await import("../js-out/calcit.core.mjs");
const { comp_container, comp_card, event_has_close_all_$q_ } = await import("../js-out/app.comp.container.mjs");
const { store: initialStore, site_map } = await import("../js-out/app.schema.mjs");
const { reel: initialReel } = await import("../js-out/reel.schema.mjs");
const { reel_updater } = await import("../js-out/reel.core.mjs");
const { updater } = await import("../js-out/app.updater.mjs");
const { make_string } = await import("../js-out/respo.render.html.mjs");
const tag = core.turn_tag;
const map = core._$n__$M_;
const op = (name, ...args) => core._$o__$o_(tag(name), ...args);
const read = (value, key) => core._$n_map_$o_get(value, tag(key));
const noop = () => {};
const { _$s_style_list_in_nodejs } = await import("../js-out/respo.css.mjs");
const styles = core.listToArray(core.deref(_$s_style_list_in_nodejs));
const containerCss = styles.find((css) => css.includes(".style-container__app_comp_container"));
assert(containerCss, "container CSS should be generated");
assert.match(containerCss, /font-family:Buda,Hind/);
assert(!containerCss.includes("%::"), "Option values must not leak into CSS declarations");


// The original test passed an empty map and never loaded any card content.
assert(core.map_$q_(site_map), "site-map must contain evaluated data, not Cirru syntax");
let reel = core.assoc(core.assoc(initialReel, tag("base"), initialStore), tag("store"), initialStore);
const route = () => core.listToArray(read(read(reel, "store"), "router")).map(core.turn_string);
const dispatch = (...args) => { reel = reel_updater(updater, reel, op(...args)); };
const render = () => make_string(comp_container(reel));
assert.match(render(), /题叶/);
dispatch("push-page", null, tag("home"));
assert.deepEqual(route(), ["home"]);
assert.match(render(), /I made Calcit scripting language!/);
dispatch("push-page", 0, tag("calcit"));
assert.deepEqual(route(), ["home", "calcit"]);
assert.match(render(), /Calcit: a Lisp dialect/);
dispatch("close-page", false, 1);
assert.deepEqual(route(), ["home"]);
dispatch("push-page", 0, tag("skills"));
dispatch("push-page", 1, tag("projects"));
dispatch("close-page", true, 1);
assert.deepEqual(route(), ["home"]);
dispatch("reduce-page");
dispatch("reduce-page");
assert.deepEqual(route(), []);

const pages = core.listToArray(core.invoke_method("to-list", core.keys(site_map)));
for (const key of pages) {
  const html = make_string(comp_card(0, key, noop, noop));
  assert(html.length > 0, `Page ${core.turn_string(key)} should render`);
}
assert.match(make_string(comp_card(0, tag("missing-page"), noop, noop)), /Unknown data/);
for (const [nativeEvent, expected] of [
  [{ metaKey: false, ctrlKey: false }, false], [{ metaKey: true, ctrlKey: false }, true], [{ metaKey: false, ctrlKey: true }, true],
]) {
  assert.equal(event_has_close_all_$q_(map(tag("event"), nativeEvent)), expected);
}
console.log(`generated-runtime-smoke-ok: ${pages.length} pages, navigation, close modifiers, and empty router`);
