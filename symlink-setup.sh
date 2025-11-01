#!/bin/bash

set -e

base_dir="$(pwd)"  # directory containing jmstatement.cls and jmIDs.tex

jm_statement_folders=("spiel/" "statement_deib/" "statement_research/" "statement_teaching/")
jm_id_folders=("spiel/" "statement_deib/" "statement_research/" "statement_teaching/" "cv/" "coverletters/")

for folder in "${jm_statement_folders[@]}"; do
    echo "Creating jmstatement.cls symlink in folder: $folder"
    ln -sf "$base_dir/jmstatement.cls" "$folder/jmstatement.cls"
done

for folder in "${jm_id_folders[@]}"; do
    echo "Creating jmIDs.tex symlink in folder: $folder"
    ln -sf "$base_dir/jmIDs.tex" "$folder/jmIDs.tex"
done
