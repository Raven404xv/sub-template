📌 قالب صفحه اشتراک Sanaei / 3x-ui

<br><div align="center"><a href="README.md">
  <img src="https://flagcdn.com/24x18/ir.png" width="24"> فارسی
</a>
&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;
<a href="README.en.md">
  <img src="https://flagcdn.com/24x18/gb.png" width="24"> English
</a>
&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;
<a href="README.ru.md">
  <img src="https://flagcdn.com/24x18/ru.png" width="24"> Русский
</a></div><br>یک قالب HTML سفارشی برای صفحه اشتراک Sanaei / 3x-ui که با هدف نصب سریع، ظاهر بهتر و مدیریت ساده طراحی شده است.

✨ امکانات

- 🎨 طراحی اختصاصی صفحه اشتراک
- ⚙️ سازگار با Sanaei / 3x-ui
- 🚀 نصب سریع با یک دستور
- 🔄 بروزرسانی آسان
- 💾 بکاپ خودکار قبل از بروزرسانی
- 🗑️ حذف آسان قالب
- 📁 نصب در مسیر اختصاصی بدون تغییر فایل‌های اصلی پنل

📋 پیش‌نیازها

- Sanaei / 3x-ui
- Linux Server
- دسترسی "Root"
- نصب بودن "curl"

🚀 نصب

برای نصب قالب، دستور زیر را روی سرور اجرا کنید:

bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)

پس از نصب، قالب در مسیر زیر قرار می‌گیرد:

/etc/3x-ui/sub_templates/xv/

⚙️ فعال‌سازی قالب

پس از نصب، وارد پنل Sanaei / 3x-ui شوید.

از مسیر زیر:

Settings → Subscription → Information

در قسمت Sub Theme Directory مسیر زیر را وارد کنید:

/etc/3x-ui/sub_templates/xv/

سپس تنظیمات را ذخیره کنید.

🔄 بروزرسانی

برای دریافت آخرین نسخه قالب، همان دستور نصب را دوباره اجرا کنید:

bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)

قبل از جایگزینی قالب، نسخه فعلی به صورت خودکار بکاپ می‌شود.

🗑️ حذف

برای حذف کامل قالب، دستور زیر را اجرا کنید:

bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)

پس از اجرای اسکریپت، فایل‌های مربوط به این قالب از مسیر نصب حذف می‌شوند.

📁 مسیر نصب

/etc/3x-ui/sub_templates/xv/

فایل اصلی قالب:

/etc/3x-ui/sub_templates/xv/sub.html

📂 ساختار پروژه

sub-template/
├── README.md
├── README.en.md
├── README.ru.md
├── install.sh
├── sub.html
└── uninstall.sh

🔗 لینک‌ها

نصب:

https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh

حذف:

https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh

---

🛡️ XV Subscription Template

قالب HTML سفارشی صفحه اشتراک برای Sanaei / 3x-ui.
