📌 قالب صفحه اشتراک Sanaei / 3x-ui

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



<br>یک قالب HTML سفارشی برای صفحه اشتراک Sanaei / 3x-ui که با هدف نصب سریع و مدیریت ساده طراحی شده است.

✨ امکانات

- 🎨 طراحی اختصاصی صفحه اشتراک
- ⚙️ سازگار با Sanaei / 3x-ui
- 🚀 نصب و بروزرسانی با یک دستور
- 💾 بکاپ خودکار قبل از جایگزینی قالب
- 🗑️ حذف آسان قالب

🚀 نصب

برای نصب قالب، دستور زیر را روی سرور اجرا کنید:

```
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
```
قالب پس از نصب در مسیر زیر قرار می‌گیرد:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>⚙️ فعال‌سازی قالب

پس از نصب، وارد پنل Sanaei / 3x-ui شوید و به مسیر زیر بروید:

<pre>
Settings → Subscription → Information
</pre>در قسمت Sub Theme Directory مسیر زیر را وارد کنید:

```
/etc/3x-ui/sub_templates/xv/
```
در پایان تنظیمات را ذخیره کنید.

🔄 بروزرسانی

برای بروزرسانی قالب و دریافت آخرین نسخه، همان دستور نصب را دوباره اجرا کنید:

```
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
```
پیش از جایگزینی نسخه جدید، از قالب فعلی به صورت خودکار بکاپ گرفته می‌شود.

🗑️ حذف

برای حذف قالب، دستور زیر را اجرا کنید:

```
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)
```
📁 ساختار پروژه

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
- Linux Server
- دسترسی Root
- curl

---

🛡️ XV Subscription Template

قالب HTML سفارشی صفحه اشتراک برای Sanaei / 3x-ui.
