package foo

import (
	"text/tabwriter"
	"tool/cli"
)

command: {
	lsd: {
		task: print: cli.Print & {
			text: tabwriter.Write([
				"\(x.name)"
				for x in objects
			])
		}
	}
	lse: {
		task: print: cli.Print & {
			text: tabwriter.Write([
				"\(x.name)"
				for x in objectsDisabled
			])
		}
	}
}