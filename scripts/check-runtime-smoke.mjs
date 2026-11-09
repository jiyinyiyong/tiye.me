import assert from "node:assert/strict";
import { invoke_method } from "@calcit/procs";

globalThis.window = { innerWidth: 1280, innerHeight: 800, devicePixelRatio: 1, location: { host: "localhost" } };

const core = await import("../js-out/calcit.core.mjs");
const { comp_container, comp_card, event_has_close_all_$q_ } = await import("../js-out/app.comp.container.mjs");
const { Action, store: initialStore, site_map } = await import("../js-out/app.schema.mjs");
const { Control, new_reel, record_op, apply_control, refresh } = await import("../js-out/reel.typed.mjs");
const { updater } = await import("../js-out/app.updater.mjs");
const { make_string } = await import("../js-out/respo.render.html.mjs");
const { with_memo_frame } = await import("../js-out/respo.memo.mjs");
const renderComponent = (build) => with_memo_frame(() => make_string(build()));
const { event__GT_edn } = await import("../js-out/respo.util.format.mjs");
const tag = core.to_tag;
const map = core._$n__$M_;
const unwrap = (value) => invoke_method("unwrap", value);
const read = (value, key) => unwrap(core.get(value, tag(key)));
const none = () => core._PCT__$o__$o_(core.Option, tag("none"));
const some = (value) => core._PCT__$o__$o_(core.Option, tag("some"), value);
const noop = () => {};
const { _$s_style_list_in_nodejs } = await import("../js-out/respo.css.mjs");
const styles = core.listToArray(core.deref(_$s_style_list_in_nodejs));
const containerCss = styles.find((css) => css.includes(".style-container__app_comp_container"));
assert(containerCss, "container CSS should be generated");
assert.match(containerCss, /font-family:Buda,Hind/);
assert(!containerCss.includes("%::"), "Option values must not leak into CSS declarations");


// The original test passed an empty map and never loaded any card content.
assert(core.map_$q_(site_map), "site-map must contain evaluated data, not Cirru syntax");
let reel = new_reel(initialStore);
let sequence = 0;
const route = () => core.listToArray(read(read(reel, "store"), "router")).map((key) => core.to_string(key));
const dispatch = (name, ...args) => {
  const action = core._PCT__$o__$o_(Action, tag(name), ...args);
  reel = record_op(updater, reel, action, `test-${++sequence}`, sequence);
};
const render = () => renderComponent(() => comp_container(reel, noop));
assert.match(render(), /题叶/);
dispatch("push-page", none(), tag("home"));
assert.deepEqual(route(), ["home"]);
assert.match(render(), /I made Calcit scripting language!/);
dispatch("push-page", some(0), tag("calcit"));
assert.deepEqual(route(), ["home", "calcit"]);
assert.match(render(), /Calcit: a Lisp dialect/);
dispatch("close-page", false, 1);
assert.deepEqual(route(), ["home"]);
dispatch("push-page", some(0), tag("skills"));
dispatch("push-page", some(1), tag("projects"));
dispatch("close-page", true, 1);
assert.deepEqual(route(), ["home"]);
dispatch("reduce-page");
dispatch("reduce-page");
assert.deepEqual(route(), []);

const pages = core.listToArray(invoke_method("to-list", core.keys(site_map)));
for (const key of pages) {
  const html = renderComponent(() => comp_card(0, key, noop, noop));
  assert(html.length > 0, `Page ${core.to_string(key)} should render`);
}
assert.match(renderComponent(() => comp_card(0, tag("missing-page"), noop, noop)), /Unknown data/);
for (const [nativeEvent, expected] of [
  [{ metaKey: false, ctrlKey: false }, false], [{ metaKey: true, ctrlKey: false }, true], [{ metaKey: false, ctrlKey: true }, true],
]) {
  const event = event__GT_edn({ type: "click", ...nativeEvent });
  assert.equal(event_has_close_all_$q_(event), expected);
}
// Typed history must replay the same Store after recall, resume, and hot reload.
reel = new_reel(initialStore);
dispatch("push-page", none(), tag("home"));
dispatch("push-page", some(0), tag("calcit"));
const control = (name, ...args) => {
  const command = core._PCT__$o__$o_(Control, tag(name), ...args);
  reel = apply_control(updater, reel, command);
};
control("recall", 1);
assert.deepEqual(route(), ["home"]);
assert.equal(read(reel, "stopped?"), true);
control("run");
assert.deepEqual(route(), ["home", "calcit"]);
reel = refresh(updater, reel, initialStore);
assert.deepEqual(route(), ["home", "calcit"]);
control("reset");
assert.deepEqual(route(), []);
console.log(`generated-runtime-smoke-ok: ${pages.length} pages, navigation, close modifiers, empty router, and typed history`);
