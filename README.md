# cue-nested-broken
Demonstration of an issue with cue and nested folders

```
# ./run.sh
nested-working
name: a
---
name: b

nested-broken
text: invalid operation !x.disabled (! _|_):
    ./foo_tool.cue:4:25
```

The only difference in nested-broken is that b.cue is in a folder b
