📌 Шаблон страницы подписки Sanaei / 3x-ui

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
</a><br>Кастомный HTML-шаблон страницы подписки Sanaei / 3x-ui, созданный для быстрой установки и простого управления.

✨ Возможности

- 🎨 Собственный дизайн страницы подписки
- ⚙️ Совместимость с Sanaei / 3x-ui
- 🚀 Установка и обновление одной командой
- 💾 Автоматическое резервное копирование перед заменой шаблона
- 🗑️ Простое удаление шаблона

🚀 Установка

Для установки шаблона выполните следующую команду на сервере:

```
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
```
После установки шаблон будет находиться по следующему пути:

<pre>
/etc/3x-ui/sub_templates/xv/
</pre>⚙️ Активация шаблона

После установки откройте панель Sanaei / 3x-ui и перейдите:

<pre>
Settings → Subscription → Information
</pre>В поле Sub Theme Directory укажите следующий путь:

```
/etc/3x-ui/sub_templates/xv/
```
После этого сохраните настройки.

🔄 Обновление

Чтобы обновить шаблон и получить последнюю версию, повторно выполните команду установки:

```
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/install.sh)
```
Перед заменой текущей версии автоматически создаётся резервная копия шаблона.

🗑️ Удаление

Для удаления шаблона выполните:

```
bash &lt;(curl -fsSL https://raw.githubusercontent.com/Raven404xv/sub-template/main/uninstall.sh)
```
📁 Структура проекта

<pre>
sub-template/
├── README.md
├── README.en.md
├── README.ru.md
├── install.sh
├── sub.html
└── uninstall.sh
</pre>📋 Требования

- Sanaei / 3x-ui
- Linux Server
- Root-доступ
- curl

---

🛡️ XV Subscription Template

Кастомный HTML-шаблон страницы подписки для Sanaei / 3x-ui.
