@echo off
IF [%1] == [] GOTO :end

git rm examples\%1
rm -rf .git\modules\examples\%1
git config --remove-section submodule.examples/%1

:end