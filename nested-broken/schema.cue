package foo

Thing : {
    name : string
}

HasDisabled : {
	disabled :: bool | *false
}

outer: [string]: {
    HasDisabled
}

