📌 عنوان
قالب اشتراک برای Sanaei / 3x-ui
یک قالب HTML سفارشی برای صفحه اشتراک پنل Sanaei / 3x-ui.
✨ امکانات
صفحه اشتراک سفارشی
سازگار با Sanaei / 3x-ui
نصب با یک دستور
بکاپ خودکار از قالب قبلی
امکان آپدیت ساده
امکان حذف ساده
🚀 نصب
کاربر فقط این دستور را روی سرور اجرا می‌کند:
bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
قالب به صورت خودکار در این مسیر نصب می‌شود:
/etc/3x-ui/sub_templates/xv/
⚙️ تنظیم در پنل
بعد از نصب باید برود:
Settings → Subscription → Information
و در قسمت:
Sub Theme Directory
این مسیر را وارد کند:
/etc/3x-ui/sub_templates/xv/
بعد Save را بزند.
🔄 آپدیت
اگر قالب جدیدی روی GitHub قرار گرفت، دوباره همان دستور نصب را اجرا می‌کند و قالب قبلی قبل از جایگزینی بکاپ می‌شود.
🗑️ حذف
برای حذف قالب:
bash <(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)
📁 ساختار پروژه
sub-template/
├── README.md
├── install.sh
├── sub.html
└── uninstall.sh
📍 مسیر نهایی قالب
/etc/3x-ui/sub_templates/xv/sub.html
📋 نیازمندی‌ها
Sanaei / 3x-ui
سرور لینوکس
دسترسی Root
curl
