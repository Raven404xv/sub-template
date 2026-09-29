📌 قالب اشتراک Sanaei / 3x-ui

یک قالب HTML سفارشی برای صفحه اشتراک پنل Sanaei / 3x-ui با نصب و مدیریت ساده.

✨ امکانات

- 🎨 صفحه اشتراک با طراحی سفارشی
- ⚙️ سازگار با Sanaei / 3x-ui
- 🚀 نصب با یک دستور
- 💾 بکاپ خودکار از قالب قبلی
- 🔄 امکان آپدیت ساده
- 🗑️ امکان حذف قالب

🚀 نصب

برای نصب قالب، کافی است دستور زیر را روی سرور اجرا کنید:

bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)

قالب به صورت خودکار در مسیر زیر نصب می‌شود:

/etc/3x-ui/sub_templates/xv/

⚙️ تنظیم قالب در پنل

بعد از نصب، وارد پنل 3x-ui شوید و به مسیر زیر بروید:

Settings → Subscription → Information

سپس در قسمت Sub Theme Directory مسیر زیر را وارد کنید:

/etc/3x-ui/sub_templates/xv/

در نهایت روی Save کلیک کنید.

🔄 آپدیت

برای دریافت آخرین نسخه قالب، کافی است همان دستور نصب را دوباره اجرا کنید:

bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)

قبل از جایگزین شدن نسخه جدید، نسخه قبلی قالب به صورت خودکار بکاپ گرفته می‌شود.

🗑️ حذف

برای حذف قالب، دستور زیر را اجرا کنید:

bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)

📁 ساختار پروژه

sub-template/
├── README.md
├── install.sh
├── sub.html
└── uninstall.sh

📍 مسیر نصب نهایی

فایل قالب پس از نصب در مسیر زیر قرار می‌گیرد:

/etc/3x-ui/sub_templates/xv/sub.html

📋 نیازمندی‌ها

- Sanaei / 3x-ui
- Linux Server
- دسترسی Root
- curl

---

🛡️ XV | Subscription Template

قالب سفارشی صفحه اشتراک برای Sanaei / 3x-ui
