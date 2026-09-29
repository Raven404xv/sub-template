# XVPN Subscription Theme for Sanaei / 3x-ui

تم HTML سفارشی صفحه Subscription برای Sanaei / 3x-ui.

## نصب با یک دستور

بعد از قرار دادن این پروژه روی GitHub، این دستور را روی سرور اجرا کنید:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/install.sh)
```

یا:

```bash
sudo bash <(curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/install.sh)
```

نصب‌کننده فایل `sub.html` را دانلود و در مسیر زیر قرار می‌دهد:

```text
/etc/3x-ui/sub_templates/xvpn/
```

## فعال کردن در پنل

در پنل Sanaei / 3x-ui برو به:

**Settings → Subscription → Information**

در قسمت **Sub Theme Directory** این مسیر را وارد کن:

```text
/etc/3x-ui/sub_templates/xvpn/
```

بعد **Save** را بزن.

## حذف

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/uninstall.sh)
```

## ساختار پروژه

```text
xvpn-sub-template/
├── sub.html
├── install.sh
├── uninstall.sh
└── README.md
```

## بروزرسانی

هر زمان `sub.html` را در GitHub تغییر بدهی، دوباره دستور نصب را اجرا کن. نسخه قبلی قبل از جایگزینی بکاپ می‌شود.
