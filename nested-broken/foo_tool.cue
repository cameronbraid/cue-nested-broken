package foo

objects : [
    x for x in outer if !x.disabled
]


objectsDisabled : [
    x for x in outer if x.disabled
]
