#!/bin/bash

echo "🟢 Fox Script - فحص البورتات المفتوحة"
echo "---------------------------------------"

# التأكد من وجود netstat
if ! command -v netstat &> /dev/null; then
    echo "📦 netstat مش موجود... جاري التثبيت"
    sudo apt update && sudo apt install net-tools -y
fi

# عرض البورتات المفتوحة
echo "🔍 البورتات المفتوحة حاليًا:"
sudo netstat -tuln | grep LISTEN

echo "---------------------------------------"
echo "✅ تم عرض البورتات بنجاح"
echo "💡 لو لقيت بورتات غريبة، راجع البرامج اللي فاتحة البورت ده"
