# vim ide
a simple vim ide.

# description
* support GBK
* add **alias myvim='vim -S mysession.vim -c "WMToggle"'** into **.bashrc** to save session
    * **:qqq** save session, save all and quit
    * **>myvim** start from the place where it was closed last time

# dependencies
## CentOS
```
yum install ncurses-devel
```
## Ubuntu
```
sudo apt-get install libncurses5-dev libncursesw5-dev
```
## Mac
[click me](https://gist.github.com/cnruby/960344)
