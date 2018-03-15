# Robot-Framework-with-Selenium-and-Workshop-Login-Facebook
Robot Framework with Selenium and Workshop Login Facebook

#SETUP
##Install Python 2.7
###Download Python: [download Python](https://www.python.org/ftp/python/2.7.8/python-2.7.8.msi)

```
Command:
cd C:\Python27
C:\Python27>python
Python 2.7.8 (default, Jun 30 2014, 16:03:49) [MSC v.1500 32 bit (Intel)] on win
32
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

###Download get-pip.py: [download pip](https://bootstrap.pypa.io/get-pip.py)
**pip is the preferred installer program.**

Go to path download **get-pip.py**. Then run **python get-pip.py**. This will install pip.

```
Command:
C:\user\guest>python get-pip.py
C:\user\guest>cd C:\python27\Scripts
C:\python27\Scripts>pip freeze
antiorm==1.1.1
enum34==1.0
requests==2.3.0
virtualenv==1.11.6
```

##Set Environment Variables
Right click at **My Computer > Properties > Advanced system settings > Environment Variables**
And then look at System variables click **New..**
```
Variable name:  PYTHON_HOME
Variable value: C:\Python27
Click OK
```
![install Package](/images/1-system-variable.png)

  For **windows10** look up **Path** then click edit put **C:\Python27;** at the last character<br />
  and then put **C:\Python27\Scripts;** other **windows**<br />
  For other **windows** look up **Path** then click edit put **;%PYTHON_HOME%\;%PYTHON_HOME%\Scripts**<br />
  Click OK

![install Package](/images/2-system-variable.png)

**Verify a successful installation**

```
Command:
C:\user\guest>python
C:\Python27>python
Python 2.7.8 (default, Jun 30 2014, 16:03:49) [MSC v.1500 32 bit (Intel)] on win
32
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

```
C:\user\guest>pip freeze
antiorm==1.1.1
enum34==1.0
requests==2.3.0
virtualenv==1.11.6
```

**Documentation: [Document](https://github.com/BurntSushi/nfldb/wiki/Python-&-pip-Windows-installation)**

-----------------

#Install Robot Framework with pip
```
Command:
pip install robotframework
```

```
# Upgrade to the latest version
pip install --upgrade robotframework

# Install a specific version
pip install robotframework==2.9.2
```

#Install Robot Framework Database-Library
```
Command:
pip install robotframework-databaselibrary
```

#Install Robot Framework pymysql
```
pip install pymysql
```

#Install Robot Framework Selenium2library with pip
```
Command:
pip install robotframework-selenium2library
pip freeze
appdirs==1.4.0
decorator==4.0.11
packaging==16.8
pyparsing==2.1.10
robotframework==3.0.2
robotframework-selenium2library==1.8.0
selenium==3.0.2
six==1.10.0
```

###Download Chrome driver [Download Chrome driver](https://chromedriver.storage.googleapis.com/index.html?path=2.27/)
Extract Zip then move **chromedriver.exe** to **C:\Python27\Scripts**

-----------------

#Install Tools

###RIDE
RIDE made from robot framework developer.<br />
Easy to work because it's don't need type programming.<br />
**Download wxpython 2.8.12.1 for windows64bit: [Download wxpython 2.8.12.1 windows64bit](https://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/wxPython2.8-win64-unicode-2.8.12.1-py27.exe/download)**<br />
**Download wxpython 2.8.12.1 for windows32bit: [Download wxpython 2.8.12.1 windows32bit](https://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/wxPython2.8-win32-unicode-2.8.12.1-py27.exe/download)**<br />
**List of wxpython: [List wxpython 2.8.12.1](https://sourceforge.net/projects/wxpython/files/wxPython/2.8.12.1/)**<br />
Install wxpython 2.8.12.1<br />

```
Command:
C:\>pip install robotframework-ride==1.5.2.1
C:\>ride.py
```

![install RIDE](/images/1-install-ride.png)

###ATOM
ATOM is a text editor.<br />
**Download ATOM: [Download ATOM](https://atom.io/)**
After installed go to **file > settings** click Install then type robot and type terminal follow figure.

![install Package](/images/2-install-package.png)

![install Package](/images/3-install-package.png)

###PyCharm
PyCharm is a Python IDE for Professional Developers<br />
PyCharm develop by jetbrains. eg. IntelliJ, PhpStorm<br />

**Website for PyCharm: [Website for PyCharm](https://www.jetbrains.com/pycharm/)**<br />
**Download PyCharm: [Download PyCharm](https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=windows)**<br />
Install PyCharm and then run it.<br />

![install Package](/images/4-install-pycharm.png)

###MySql Workbench
MySql Workbench is a tools for access to mysql.<br />
[Download Workbench](https://dev.mysql.com/downloads/workbench/)

##End of Setup
