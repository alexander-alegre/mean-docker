#!/usr/bin/env bash

read -p "Component name: " componentName;

if [[ -z "$componentName" ]]; then
  printf '%s\n' "Enter in a migration name."
  exit 1
fi


cd /app;
ng generate component "$componentName";
cd -;
