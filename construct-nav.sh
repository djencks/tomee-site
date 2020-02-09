#!/bin/bash

# construct a nav file listing all adocs in order.

(cd tomee/modules/ROOT/pages;find . -name "*.adoc" -exec bash -c 'echo \* xref:${0//.\//}[]' {} \; |sort  > ../nav.adoc)
