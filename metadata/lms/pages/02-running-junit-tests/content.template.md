## Purpose

This appendix will demonstrate IDE features for JUnit test support
in STS/Eclipse and IntelliJ IDEA.

## Run a JUnit Test from IDE

### STS or Eclipse

From the test class editor, or when selecting the test class in the
project tree view, you may use either of the following:

- Right-click on the test class name, select _Run As >> JUnit Test_.

- Use keyboard shortcut `Opt-Cmd-X,T` on Mac OSX, or
  `Alt+Shift+X,T` on Linux or Windows.

Eclipse will render visual tool window showing the status of your
test execution.
You may exand the test case node for details:

![JUnit Test Run Results](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/eclipse-junit-test-results.png)

### IDEA IntelliJ

From the test class editor, or when selecting the test class in the
project tree view, you may use either of the following:

- Right-click on the test class name, select \*Run &lt;TestName&gt;.

- Use keyboard shortcut `Ctrl-Shift-R` on Mac OSX, or
  `Ctrl+Shift+R` on Linux or Windows.

IntelliJ will render visual tool window showing the status of your
test execution:

![JUnit Test Run Results](https://raw.githubusercontent.com/spring-academy/spring-academy-assets/main/courses/course-spring-professional/idea-junit-test-results.png)

### Generate a Test from your IDE

If you want to generate your junit tests from existing production
classes,
both STS (Eclipse) and IntelliJ support the test class generation.

#### STS (or Eclipse)

- Right click on the class under test in the tree view.

- Select _New >> JUnit Test Case_ menu option.

- Follow the dialogs to:

  - Select a boiler plate for any of the method stubs.
  - Select a list ofmethods from the class user test
    that you may want to build tests for.

- Keep in mind you must implement the production code to make the
  tests pass.

#### IntelliJ

Check out Intellij
[Create Tests](https://www.jetbrains.com/help/idea/create-tests.html)
article.
