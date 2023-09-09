sed -i 's|XFLCDIR|'"$(pwd)"'|g' fl.md
if [ -f explanation.md ]; then
    sed -i 's|XFLCDIR|'"$(pwd)"'|g' explanation.md
fi