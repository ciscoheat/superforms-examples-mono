@echo off
IF [%1] == [] GOTO :end

pushd examples\%1
git submodule add -b %1 git@github.com:ciscoheat/superforms-examples-base.git %1
cd %1
pnpm install
popd

:end
