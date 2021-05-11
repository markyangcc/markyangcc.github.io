@echo off
set public=C:\Hugo\Sites\blog\public
set blog=C:\Hugo\Sites\blog
set repo=https://github.com/markyangcc/markyangcc.github.io.git
set branch=main


if exist %public% (
    cd %public%
    echo git add and commit
    git add .
    git commit -am "update site at %time%"
    echo Commited on local, try to push to Github now...
    git push
    echo Pushing Successful!
) else (
    echo Pushing Error...
)
