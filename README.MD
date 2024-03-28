# Установка и настройка LaTeX
1. Установить Linux и не мучиться. На W*ndows так-то латекс тоже работает, но процедура установки значительно сложнее. По опыту своих друзей и подруг скажу, что лучше не тратить силы на шаманство и сразу поставить нормальный дистрибутив на нормальную ОС. Дальнейшие инструкции будут приведены для Arch/Manjaro и Ubuntu/Mint.
2. Установить Visual Studio Code. Скрипт для пакетного менеджера apt (Ubuntu/Mint):
```
sudo apt install dirmngr ca-certificates software-properties-common apt-transport-https -y
curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg > /dev/null
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code
```
Скрипт для пакетного менеджера pamac (Manjaro):
```
pamac install code
```
Скрипт для пакетного менеджера pacman (Arch/Manjaro):
```
sudo pacman -Sy code
```
3. Установить Python (в Manjaro и, вроде бы в Ubuntu/Mint тоже, он уже предустановлен) и его пакетный менеджер pip. Ubuntu/Mint:
```
sudo apt-get install python
```
Arch/Manjaro:
```
sudo pacman -S python pip
```
4. Установить pygmentize:
```
pip install pygments
```
На некоторых конфигурациях для работы с разными версиями Python команды могут быть переименованы, поэтому если ```pip``` недоступен, возможно, стоит использовать ```pip3```. На Manjaro также есть интеграция с системными репозиториями и ```pip``` может отказаться ставить pygmentize. Тогда ```sudo pacman -S python-pygmentize```.

6. Теперь надо установить плагин LaTeX Workshop для Visual Studio Code. Для этого заводишь VS Code и в меню открываешь вкладку ```Extensions``` (```Расширения``` в русской локализации). Получить доступ к ней можно в левой боковой панели или с помощью ```Ctrl + Shift + X```. Далее в поиске необходимо ввести “LaTeX Workshops”, перейти на страницу плагина и нажать ```Install``` в появившемся меню.
7. Теперь нужно настроить LaTeX Workshop. На этой же странице нажимаешь на шестерёнку -> ```Extension settings```. В поиске пишешь ```tools```, для пункта меню ```Latex-workshop > Latex: Tools``` жмякаешь ```Edit in settings.json```.
8. В открывшемся файле для утилиты ```latexmk``` нужно добавить параметр запуска ```--shell-escape```. Должно получиться следующее:
```
{
    "name": "latexmk",
    "command": "latexmk",
    "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "-pdf",
        "-outdir=%OUTDIR%",
        "%DOC%",
        "-shell-escape",
    ],
    "env": {}
},
```
9. Берёшь шаблон из этого репозитория, в main.tex пишешь свои лабы, рефераты и прочие писульки и радуешься жизни
# Авторы
Над шаблоном работали:
- Сергей Владимирович Миронов
- Никита Рыданов
- Миша Чернигин
- Данила Григорьев (незначительные изменения и дополнения)

Любые идеи, доработки, замечания и правки категорически приветствуются. Все права не защищены.
