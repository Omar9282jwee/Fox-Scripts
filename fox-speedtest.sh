#!/bin/bash

echo "🚀 Fox Script - Speedtest"
echo "----------------------------"

# التأكد من وجود speedtest-cli
if ! command -v speedtest &> /dev/null; then
    echo "📦 speedtest-cli مش موجود... جاري التثبيت"
    sudo apt update && sudo apt install speedtest-cli -y
fi

# تشغيل الاختبار
speedtest

echo "----------------------------"
echo "✅ تم عرض نتيجة اختبار السرعة"
