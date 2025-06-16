# how to run: bash CursorRIPER/fast_setup.sh
mkdir -p .cursor/rules
cp -r ./CursorRIPER/src/.cursor/* .cursor/
cd .cursor/rules/
for file in *.md; do
    if [ -f "$file" ]; then
        mv "$file" "${file%.md}.mdc"
    fi
done