# pyenv-virtualenv-installer

### ubuntu16.04の場合: 必要なpkgのinstall （これらが無いとpyenv install xxxでエラーとなる)

```
$ sudo apt-get install build-essential zlib1g-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev
```
  
### 現在のpythonのversionを確認

```
$ pyenv version
system (set by /home/ubuntu/.pyenv/version)
``` 
 
### 現状を確認

```
$ pyenv versions
* system (set by /home/ubuntu/.pyenv/version)
```

### install可能なpythonのversionを確認

```
$ pyenv install --list
... (omit)...
```
 
### pyenvでpython3.6.5をinstall

```
$ pyenv install 3.6.5 
$ pyenv rehash
$ pyenv versions
* system (set by /home/ubuntu/.pyenv/version)
  3.6.5
$
``` 
 
###  working directoryに移動し、pyenv-virtualenvで3.6.5から3.6.5の仮想環境を構築

```
$ cd {working-dir}
$ pyenv virtualenv 3.6.5 venv-3.6.5
```
 
### 現在のdirectoryで3.6.5の仮想環境を使うようにする

```
$ pyenv local venv-3.6.5
(venv-3.6.5) $
```

### pipをversion up

```
pip install --upgrade pip
```
