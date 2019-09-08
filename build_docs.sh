#!/bin/bash

git config user.name "adibrastegarnia"
git config user.email "arastega@purdue.edu"
git remote add gh-token "https://${GH_TOKEN}@github.com/multirepo-docs/root-docs.git";
git fetch gh-token && git fetch gh-token gh-pages:gh-pages;
CURRENT_PATH=$PWD
cd docs 
git submodule add https://github.com/multirepo-docs/repo-docs-1.git
git submodule add https://github.com/multirepo-docs/repo-docs-2.git
git submodule add https://github.com/multirepo-docs/repo-docs-3.git
cd $CURRENT_PATH
mkdocs gh-deploy -v --clean --remote-name gh-token;
