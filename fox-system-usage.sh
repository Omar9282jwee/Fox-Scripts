#!/bin/bash
# Fox-System-Usage Script
# سكريبت بيعرض حالة السيرفر (RAM, CPU, Disk)
# Created by Fox

echo "⚙️ Fox-System-Usage Report"
echo "----------------------------"

echo "🧠 RAM Usage:"
free -h

echo ""
echo "🖥️ CPU Load:"
uptime

echo ""
echo "💾 Disk Usage:"
df -h /

echo ""
echo "✅ الفحص خلص بنجاح - تم بواسطة Fox Scripts"
