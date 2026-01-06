#!/bin/bash
cat > ~/.ignore << 'EOF'
.cache/
.local/
.npm/
.bun/
.yarn/
node_modules/
.cargo/
.rustup/
go/
.gradle/
.m2/
.Trash/
Library/
.docker/
EOF
echo "✓ 완료"
