# Welcome to use DBUS on Windows!

DBUS是一种进程间远程调用的机制。 官方网站是： https://www.freedesktop.org/wiki/Software/dbus/ 通过这里提供的DBUS Windows移植版本，你可以在windows上面开发dbus程序啦！

# 如何使用

1. 复制dbus-1.dll到你的DBUS程序目录中。
2. 在桌面上创建dbus-daemon.exe的快捷方式
3. 修改步骤2创建的快捷方式，在该快捷方式上右键，在“目标”栏位中填写：xxx\dbus-daemon.exe --config-file=session.conf 注意，xxx指的是dbus-daemon.exe所在的文件夹。
4. 开始运行dbus-daemon.exe吧!
5. 运行你的程序之前，先运行dbus-env.bat,之后再运行你的程序。

# 在QT中测试

QT中有很多DBUS的示例程序，可以使用它们来测试DBUS通信。 

使用qdbusviewer.exe，在浏览org.freedesktop.DBUs的DBUS接口时，会报一部分错误，不过这并不影响实际的DBUS通信开发！

可用 Example 下 dbus 内的 chat 程序测试。

开发程序时，需要 dbus-1.dll 复制到输出目录内，并在“运行设置”内的“环境”增加 “DBUS_SESSION_BUS_ADDRESS" 设置，其值与 dbus-env.bat 内”DBUS_SESSION_BUS_ADDRESS“值相同。

## DBUS版本

1.14.9

## DBUS 编译

https://stackoverflow.com/a/34364870

https://www.cnblogs.com/henkk/p/16547724.html

# 已知问题

- dbus-monitor无法在PowerShell下使用。即使运行了“dbus-env.bat”，还是报“Failed to open connection to session bus: Failed to get autolaunch address from launched dbus-daemon”。但在 CMD 下运行正常。
