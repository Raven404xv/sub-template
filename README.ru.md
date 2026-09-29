📌 Шаблон подписки Sanaei / 3x-ui

"🇮🇷 فارسی" (README.md)   |   "🇬🇧 English" (README.en.md)   |   🇷🇺 Русский

Кастомный HTML-шаблон для страницы подписки Sanaei / 3x-ui.

✨ Возможности

- 🎨 Кастомная страница подписки
- ⚙️ Совместимость с Sanaei / 3x-ui
- 🚀 Установка одной командой
- 💾 Автоматическое резервное копирование предыдущего шаблона
- 🔄 Простое обновление
- 🗑️ Простое удаление

🚀 Установка

Выполните следующую команду на сервере:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>Шаблон будет установлен в:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>⚙️ Настройка панели

После установки откройте Sanaei / 3x-ui и перейдите:

<pre>
Settings → Subscription → Information
</pre>В поле Sub Theme Directory укажите:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>После этого нажмите Save.

🔄 Обновление

Чтобы установить последнюю версию шаблона, снова выполните команду установки:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
</pre>Перед заменой предыдущая версия шаблона автоматически сохраняется в резервную копию.

🗑️ Удаление

Для удаления шаблона выполните:

<pre>
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)
</pre>📁 Структура проекта

<pre>
sub-template/
├── README.md
├── README.en.md
├── README.ru.md
├── install.sh
├── sub.html
└── uninstall.sh
</pre>📍 Путь к установленному шаблону

<pre>
/etc/3x-ui/sub_templates/xv/sub.html
</pre>📋 Требования

- Sanaei / 3x-ui
- Linux Server
- Root-доступ
- curl

---

🛡️ XV | Subscription Template

Кастомный шаблон страницы подписки для Sanaei / 3x-ui.
