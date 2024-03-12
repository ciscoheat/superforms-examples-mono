@echo off
IF [%1] == [] GOTO :end

pushd examples\%1
git submodule add https://github.com/ciscoheat/superforms-examples-base.git %1
cd %1
git remote set-url --push origin https://nopush.example.com
pnpm install
popd

:end
