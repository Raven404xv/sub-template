📌 Sanaei / 3x-ui Subscription Template


<a href="README.md">
  <img src="https://flagcdn.com/24x18/ir.png" width="24"> فارسی
</a>
&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="README.en.md">
  <img src="https://flagcdn.com/24x18/gb.png" width="24"> English
</a>
&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
<a href="README.ru.md">
  <img src="https://flagcdn.com/24x18/ru.png" width="24"> Русский
</a>



یک قالب HTML سفارشی برای صفحه اشتراک Sanaei / 3x-ui با نصب، بروزرسانی و حذف ساده.

✨ امکانات

- 🎨 طراحی سفارشی صفحه اشتراک
- ⚙️ سازگار با Sanaei / 3x-ui
- 🚀 نصب و بروزرسانی با یک دستور
- 💾 بکاپ خودکار قبل از بروزرسانی
- 🗑️ حذف آسان

🚀 نصب

دستور زیر را روی سرور اجرا کنید:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>قالب در مسیر زیر نصب می‌شود:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>⚙️ فعال‌سازی

در پنل Sanaei / 3x-ui به مسیر زیر بروید:

<pre>
Settings → Subscription → Information
</pre>در قسمت Sub Theme Directory مسیر زیر را وارد کنید:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>سپس تنظیمات را ذخیره کنید.

🔄 بروزرسانی

برای بروزرسانی قالب، همان دستور نصب را دوباره اجرا کنید:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>قبل از جایگزینی، نسخه فعلی قالب به صورت خودکار بکاپ می‌شود.

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
</pre>📋 پیش‌نیازها

- Sanaei / 3x-ui
- Linux
- دسترسی Root
- curl

---

XV Subscription Template
قالب سفارشی صفحه اشتراک برای Sanaei / 3x-ui.
