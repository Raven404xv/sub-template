📌 قالب اشتراک Sanaei / 3x-ui

<a href="README.md">
  <img src="https://flagcdn.com/24x18/ir.png" width="24"> فارسی
</a> |
<a href="README.en.md">
  <img src="https://flagcdn.com/24x18/gb.png" width="24"> English
</a> |
<a href="README.ru.md">
  <img src="https://flagcdn.com/24x18/ru.png" width="24"> Русский
</a>

قالب HTML سفارشی برای صفحه اشتراک پنل Sanaei / 3x-ui.

✨ امکانات

- 🎨 صفحه اشتراک سفارشی
- ⚙️ سازگار با Sanaei / 3x-ui
- 🚀 نصب با یک دستور
- 💾 بکاپ خودکار از قالب قبلی
- 🔄 آپدیت ساده
- 🗑️ حذف ساده

🚀 نصب

برای نصب قالب، دستور زیر را روی سرور اجرا کنید:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>قالب در مسیر زیر نصب می‌شود:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>⚙️ تنظیم در پنل

بعد از نصب، وارد پنل Sanaei / 3x-ui شوید و به مسیر زیر بروید:

<pre>
Settings → Subscription → Information
</pre>در قسمت Sub Theme Directory این مسیر را وارد کنید:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>سپس روی Save بزنید.

🔄 آپدیت

برای دریافت آخرین نسخه قالب، همان دستور نصب را دوباره اجرا کنید:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>قبل از جایگزینی نسخه جدید، قالب قبلی به صورت خودکار بکاپ گرفته می‌شود.

🗑️ حذف

برای حذف قالب، دستور زیر را اجرا کنید:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)
</pre>📁 ساختار پروژه

<pre>
sub-template/
├── README.md
├── README.en.md
├── README.ru.md
├── install.sh
├── sub.html
└── uninstall.sh
</pre>📍 مسیر نهایی قالب

<pre>
/etc/3x-ui/sub_templates/xv/sub.html
</pre>📋 نیازمندی‌ها

- Sanaei / 3x-ui
- Linux Server
- دسترسی Root
- curl

---

🛡️ XV | Subscription Template

قالب سفارشی صفحه اشتراک برای Sanaei / 3x-ui.
