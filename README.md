# Covid-19 Management System


##### ABOUT THE PROJECT:

Web Application that can be used to manage all the covid 19 based information and activities. This system is able to demonstrate bar & pi charts as well. 

##### TECHNOLOGY STACK:

Spring Framework
JSP
Servlet
Java SE8
HTML5
CSS3
Java Script
Jquery
Bootstrap
w3css
Google Charts
MySQL
SpringJDBC
Font Awesom

##### PREREQUISITES:

Fisrt of all you need to setup the java enviroment on your pc. 

What is JAVA_HOME?
By convention, JAVA_HOME is the name of an environment variable on the operating system that points to the installation directory of JDK (Java Development Kit) or JRE (Java Runtime Environment) – thus the name Java Home. For example:
1
JAVA_HOME = c:\Program Files\Java\jdk1.8.0_201
 
Why is JAVA_HOME needed?
To develop Java applications, you need to update the PATH environment variable of the operating system so development tools like Eclipse, NetBeans, Tomcat… can be executed because these programs need JDK/JRE to function. So the PATH environment variable should include JAVA_HOME:

PATH = Other Paths + JAVA_HOME
Other paths are set by various programs installed in the operating system. If the PATH environment variable doesn’t contain a path to JRE/JDK, a Java-based program might not be able to run. For example, typing java in the command prompt showing this error:
1
'java' is not recognized as an internal or external command, operable program or batch file.
error java command.

How to set JAVA_HOME on Windows 10
Here are the visual steps to properly set value for the JAVA_HOME and update the PATH environment variables in order to setup Java development environment on your computer:

1. Firstly, you need to identify the Java home directory, which is typically under C:\Program Files\Java directory.

2. Open the System Environment Variables dialog by typing environment in the search area on Start menu. Click the suggested item Edit the system environment variables:
    The System Properties dialog appears, click the button Environment Variables.

3.Create the JAVA_HOME environment variable by clicking the New button at the bottom. In the New System Variable form, enter the name and value.

Click OK, and you will see the JAVA_HOME variable is added to the list.
 
4.Update the PATH system variable. In the Environment Variables dialog, select the Path variable and click Edit:

Then in the Edit environment variable dialog, double click on the empty row just below the last text line, and enter %JAVA_HOME%\bin.

The percent signs tell Windows that it refers to a variable – JAVA_HOME, and the \bin specifies the location of java.exe and javac.exe programs which are used to run and compile Java programs, as well as other tools in the JDK.
Click OK button to close all the dialogs, and you’re all set. Now you can open Eclipse or NetBeans to verify. Or open a command prompt and type in javac –version.

So now if you can see the correct java version that you installed, then good to go.

Installing Apache Tomcat:

For Windows

Installing Tomcat on Windows can be done easily using the Windows installer. Its interface and functionality is similar to other wizard based installers, with only a few items of interest.

Installation as a service: Tomcat will be installed as a Windows service no matter what setting is selected. Using the checkbox on the component page sets the service as "auto" startup, so that Tomcat is automatically started when Windows starts. For optimal security, the service should be run as a separate user, with reduced permissions (see the Windows Services administration tool and its documentation).
Java location: The installer will provide a default JRE to use to run the service. The installer uses the registry to determine the base path of a Java 8 or later JRE, including the JRE installed as part of the full JDK. When running on a 64-bit operating system, the installer will first look for a 64-bit JRE and only look for a 32-bit JRE if a 64-bit JRE is not found. If a JRE cannot be found when running on a 64-bit operating system, the installer will look for a 64-bit JDK. Finally, if a JRE or JDK has not been found, the installer will try to use the JAVA_HOME environment variable. It is not mandatory to use the default JRE detected by the installer. Any installed Java 8 or later JRE (32-bit or 64-bit) may be used.
Tray icon: When Tomcat is run as a service, there will not be any tray icon present when Tomcat is running. Note that when choosing to run Tomcat at the end of installation, the tray icon will be used even if Tomcat was installed as a service.
Defaults: The defaults used by the installer may be overridden by use of the /C=<config file> command line argument. The configuration file uses the format name=value with each pair on a separate line. The names of the available configuration options are:
JavaHome
TomcatPortShutdown
TomcatPortHttp
TomcatMenuEntriesEnable
TomcatShortcutAllUsers
TomcatServiceDefaultName
TomcatServiceName
TomcatServiceFileName
TomcatServiceManagerFileName
TomcatAdminEnable
TomcatAdminUsername
TomcatAdminPassword
TomcatAdminRoles
By using /C=... along with /S and /D= it is possible to perform fully configured unattended installs of Apache Tomcat.
Refer to the Windows Service How-To for information on how to manage Tomcat as a Windows service.
The installer will create shortcuts allowing starting and configuring Tomcat. It is important to note that the Tomcat administration web application can only be used when Tomcat is running.


##### RODMAP:

proposed features that has been planned to add in the future are Barcode Generator and a reader in order to uniquely identify the members and books.

##### CONTRIBUTION:

1.Fork the Project
2.Create your Feature Branch (git checkout -b feature/AmazingFeature)
3.Commit your Changes (git commit -m 'Add some AmazingFeature')
4.Push to the Branch (git push origin feature/AmazingFeature)
5.Open a Pull Request

##### USAGE:

Please follow this link given below.

https://youtu.be/8xVu-eL8T8w

##### SUPPORT:

Sulakkhana Dissanayake - sulkkanaid@gmail.com
Project Link: https://github.com/sula92/Library-spring-jdbc-template-xmlconfig.git

##### ACKNOWLEDGEMENT:

Choose an Open Source License
GitHub Pages
Font Awesome

##### LICENSE:

Distributed under the MIT License. See LICENSE for more information.
