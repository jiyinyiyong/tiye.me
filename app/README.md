
Tiye App
----

### Develop

```bash
export boot_deps=`boot show -c`
boot dev!
```

Render HTML on build:

```bash
lumo -Kc $boot_deps:src/ -i render.cljs
```

### License

MIT
