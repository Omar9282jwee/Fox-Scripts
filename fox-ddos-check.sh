#!/bin/bash

echo "🛡️ Fox Script - DDoS Check"
echo "----------------------------"

# عرض أكثر IPs اتصالًا بالسيرفر
echo "📊 أعلى 10 IPs بترسل اتصالات حالياً:"
sudo netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head -n 10

echo "----------------------------"
echo "✅ لو في IP ظاهر كتير، راجع مصدره – ممكن يكون هجوم DDoS"
