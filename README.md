# ⚡ VLESS عبر WebSocket (WS) على Google Cloud Run + CDN

هذا المشروع يسمح لك بنشر خادم **VLESS** عبر **WebSocket** باستخدام **Xray-core**، في حاوية Docker ليتم نشره على **Google Cloud Run**، ويكون أمامه **شبكة توصيل المحتوى (CDN)** من جوجل.

---

## 🌟 الميزات

- ✔️ VLESS عبر WebSocket (WS)
- ✔️ يتم نشره على Google Cloud Run (بلا خادم + يتوسع تلقائياً)
- ✔️ يعمل مع موازن التحميل (Load Balancer) و CDN من جوجل
- ✔️ مُعد في حاوية Docker وسهل النشر
- ✔️ مصمم لتقنية إخفاء النطاق (Domain Fronting) وتجاوز الحظر

---

## ⚠️ ملاحظة هامة

- ❌ عناوين IP من جوجل التي تبدأ بـ `34.*` و `35.*` **لا تعمل بشكل موثوق** مع V2Ray/VLESS.
- ✅ استخدم **نطاقاً مخصصاً مع HTTPS** عبر **موازن التحميل و CDN من جوجل** لضمان عمل الخدمة بشكل صحيح.

---

## 🔧 نظرة عامة على الإعدادات

### `config.json`
```json
{
  "inbounds": [
    {
      "port": 8080,
      "protocol": "vless",
      "settings": {
        "clients": [
          {
            "id": "3329537f-702d-4494-acff-5b3f4022df1c",
            "level": 0
          }
        ],
        "decryption": "none"
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {
          "path": "/@exhxx"
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
