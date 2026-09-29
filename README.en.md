📌 Sanaei / 3x-ui Subscription Template

"🇮🇷 فارسی" (README.md)   |   🇬🇧 English   |   "🇷🇺 Русский" (README.ru.md)

A custom HTML template for the subscription page of Sanaei / 3x-ui.

✨ Features

- 🎨 Custom subscription page
- ⚙️ Compatible with Sanaei / 3x-ui
- 🚀 One-command installation
- 💾 Automatic backup of the previous template
- 🔄 Simple updates
- 🗑️ Easy removal

🚀 Installation

Run the following command on your server:
```
<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>The template will be installed to:
```
<pre>
/etc/3x-ui/sub_templates/xv/
</pre>⚙️ Panel Configuration

After installation, open Sanaei / 3x-ui and go to:

<pre>
Settings → Subscription → Information
</pre>Enter the following path in Sub Theme Directory:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>Then click Save.

🔄 Update

To install the latest version, run the installation command again:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>The previous template is automatically backed up before being replaced.

🗑️ Uninstall

To remove the template, run:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)
</pre>📁 Project Structure

<pre>
sub-template/
├── README.md
├── README.en.md
├── README.ru.md
├── install.sh
├── sub.html
└── uninstall.sh
</pre>📍 Final Template Path

<pre>
/etc/3x-ui/sub_templates/xv/sub.html
</pre>📋 Requirements

- Sanaei / 3x-ui
- Linux Server
- Root access
- curl

---

🛡️ XV | Subscription Template

A custom subscription page template for Sanaei / 3x-ui.
