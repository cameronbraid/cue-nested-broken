# cue-nested-broken
Demonstration of an issue with cue and nested folders
```
.
├── nested-broken
│   ├── a
│   │   └── a.cue
│   ├── b.cue
│   ├── cue.mod
│   │   ├── module.cue
│   │   ├── pkg
│   │   └── usr
│   ├── dump_tool.cue
│   ├── foo_tool.cue
│   ├── ls_tool.cue
│   └── schema.cue
├── nested-working
│   ├── a
│   │   └── a.cue
│   ├── b
│   │   └── b.cue
│   ├── cue.mod
│   │   ├── module.cue
│   │   ├── pkg
│   │   └── usr
│   ├── dump_tool.cue
│   ├── foo_tool.cue
│   ├── ls_tool.cue
│   └── schema.cue
└── run.sh
```

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

The only difference in nested-broken is that b.cue is in the parent folder.
