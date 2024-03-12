@echo off
IF [%1] == [] GOTO :end

git submodule add -b %1 git@github.com:ciscoheat/superforms-examples-base.git examples\%1
pushd examples\%1
pnpm install
popd

:end
