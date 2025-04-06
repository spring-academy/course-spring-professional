## Purpose

This appendix will demonstrate IDE features for monitoring HTTP traffic
in STS/Eclipse and IDEA IntelliJ.

## Monitor HTTP Traffic

### STS or Eclipse

For debugging or monitoring HTTP traffic, STS/Eclipse ships
with a built-in tool that can be of great value: the TCP/IP Monitor.

1.  Press `CTRL+3` (`COMMAND+3` on MacOS) and type
    `tcp` in the resulting popup window; then press `Enter` to open the
    TCP/IP Monitor View.

1.  Click the small arrow pointing downwards (on the
    top right) and choose "properties".

    ![The "properties" menu entry of the TCP/IP Monitor view](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/monitor-properties.png)

1.  Choose "Add..." to add a new monitor.

1.  As local monitoring port, enter
    8081 since this port is probably unused.

1.  As host name, enter "localhost"
    and as port enter 8080 since this is the port your
    application is running on.

1.  Press OK and then press "Start" to start the newly defined
    monitor.

### IDEA IntelliJ

In IntelliJ, you are going to install and use `TunnelliJ` plugin.

1.  Install `TunnelliJ` plugin.

    - Open IntelliJ Preference window and select `Plugins`.

    - Select `Browse Repositories..` button.

    - Type in `TunnelliJ` and click `Install` button

1.  Click `TunnelliJ` at the bottom to open it.

1.  As `localhost port`, enter
    8081 since this port is probably unused.

1.  As `redirected to`, enter "localhost"
    and 8080 since this is the port your application is
    running on.

1.  Press "Start" to start the newly defined monitor
