## Purpose

In the labs, you will often be asked to work with TODO instructions.
If you have a good understanding of the material, following the TODOs is
more challenging and involves less reading than following the detailed
instructions.

This appendix page will assist in configuring the TODO view for your
particular IDE.

## Configure TODOs in STS

In Eclipse and STS, the TODO tasks are displayed in the `Tasks` view,
usually in the central panel at the bottom (along with the Console and
Progress tabs).

You should see something similar to the figure below.

![TODOs in the Tasks view](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/tasks-view.png)

If not already displayed, click on `Window -> Show View -> Tasks` (be
careful, _not `Task List`_). If you cannot see the `Tasks` view, try
clicking `Other ...` and looking under `General`.

By default, you see the TODOs for all the active projects in
Eclipse/STS. To limit the TODOs for a specific project, execute the
steps summarized in the following screenshots:

![Configure TODOs - Configure Contents](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/task1.png)

![Configure TODOs - Select Current Project Only](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/task2.png)

### Important points to note

1.  It is possible, you might not be able to see the TODOs defined
    within resources such as HTML files.
    The TODOs are numbered - as you do each lab, check to see if any are
    any missing.

If so, check the configuration in
Preferences -> General -> Editors -> Structured Text Editor -> Task Tags
pane.
Make sure `Enable searching for Task Tags` is selected.

1.  On the `Filters` tab, verify all content types are selected.

1.  In case of Eclipse refresh issues, click on the
    `Clean and redetect Tasks` button.
    Click `Apply` and wait 3-5 seconds to see if it works.

1.  As a last resort, you may have to uncheck and then check again.
    The "Enable Searching for Task Tags" check-box.
    Click `Apply` each time you change its value.
    The TODOs may take a few seconds to appear, so again wait 3-5
    seconds to see if it worked or not.

1.  If you still have no luck ask your instructor.

You should now see something similar to the figure below.

![TODOs in the Tasks view](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/tasks.png)

## Configure TODOs in IntelliJ

In the IntelliJ IDE, the TODO tasks can be enabled in a couple of steps.

1.  Locate the TODO panel button in the lower left corner of the IDE
    work area and click it.
    Alternatively, use the shortcut _Alt+6_ or _&#8984;+6_ on Mac.

![Enable TODOs](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/intellij-tasks1.png)

1.  Locate the _Group By Modules_ button on the left menu of the TODO
    area and click it.
    Alternatively, click _Alt+M_ or &#8984;+M\* on the Mac.

![Enable TODO - Group By Module](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/intellij-tasks2.png)

From here, you can locate the module for the current lab you are
working on and expand that and the files below the module you expanded
to see all the related TODO steps for that module.

![View Module TODOs](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/intellij-tasks3.png)

## Guidelines to using TODOs as Quick Instructions

Each TODO will have a header referenced in the lab instructions.
If you wish to review the associated detailed instructions, you may
find on the associated lab instruction page on the course site.

It is critical to follow the TODO steps in the order they appear.
**Do not** jump ahead to later TODOs in the same file or some features
of the lab won’t work as described.
