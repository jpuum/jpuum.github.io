#!/bin/bash

jekyll build #--incremental
git --git-dir=.git --work-tree=_site add --all
git --git-dir=.git --work-tree=_site commit -m "autogen: update site"
git --git-dir=.git --work-tree=_site push
