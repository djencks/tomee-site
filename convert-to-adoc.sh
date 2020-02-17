#!/bin/bash

# find the needed directories:
# find content -name "*.mdtext" -exec bash -c "dirname {}" \; |sort -u
# create them by hand, eg
# mkdir -p tomee/modules/ROOT/pages/contrib/debug


#(cd content; find . -name "*.mdtext" -type f -exec sh -c     'echo kramdoc --format=GFM --wrap=ventilate --output=../tomee/modules/ROOT/pages/${0//mdtext/adoc} $0' {} \;)
# actually used for initial conversion.  However, I missed the .md files.
#(cd content; find . -name "*.mdtext" -type f -exec sh -c     'kramdoc --format=GFM --wrap=ventilate --output=../tomee/modules/ROOT/pages/${0//mdtext/adoc} $0' {} \;)


(cd content; find . -name "*.md" ! -path "*example*" -type f -exec sh -c     'kramdoc --format=GFM --wrap=ventilate --output=../tomee/modules/ROOT/pages/${0//md/adoc} $0' {} \;)


(cd content; find . -name "*.md" -path "*example*" -type f -exec sh -c     'kramdoc --format=GFM --wrap=ventilate --output=../examples/modules/ROOT/pages/${0//md/adoc} $0' {} \;)
