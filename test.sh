#!/bin/sh
# 公開前の自動テスト。失敗したら公開しない。
grep -q "__COMMIT__" index.html || { echo "FAIL: 版の表示欄が無い"; exit 1; }
grep -q "自動公開テスト" index.html || { echo "FAIL: タイトルが無い"; exit 1; }
echo "test ok"
