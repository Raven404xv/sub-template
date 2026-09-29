📌 Sanaei / 3x-ui Subscription Page Template

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
</a><br>A custom HTML template for the Sanaei / 3x-ui subscription page, designed for quick installation and simple management.

✨ Features

- 🎨 Custom subscription page design
- ⚙️ Compatible with Sanaei / 3x-ui
- 🚀 Install and update with one command
- 💾 Automatic backup before replacing the template
- 🗑️ Easy template removal

🚀 Installation

Run the following command on your server to install the template:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>After installation, the template will be located at:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>⚙️ Enable the Template

After installation, open the Sanaei / 3x-ui panel and go to:

<pre>
Settings → Subscription → Information
</pre>In the Sub Theme Directory field, enter:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>Save the settings when finished.

🔄 Update

To update the template and get the latest version, run the installation command again:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>The current template is automatically backed up before the new version is installed.

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
</pre>📋 Requirements

- Sanaei / 3x-ui
- Linux Server
- Root access
- curl

---

🛡️ XV Subscription Template

A custom HTML subscription page template for Sanaei / 3x-ui.
