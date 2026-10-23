# ITE120 Laboratory Answers

**Name:** RJ Cyrill Jirc L. Monzon  
**Student ID:** 241-01146  
**Section:** ILFV3  
**Project:** Flutter Architecture, Widgets and Basic UI

## 1. GitHub Repository Link

https://github.com/cyrill2026/flutter_basics_lab

## 2. Last Three `build() called` Lines from Activity 2

The following are the actual last three lines recorded from the Debug Console while running Activity 2 – Water Tracker:

```text
build() called: 4 glasses
build() called: 5 glasses
build() called: 6 glasses
```

These lines show that the `build()` method was executed multiple times while the water tracker remained at its maximum goal of six glasses.

## 3. Experiment Observations

**Activity 2 – Changing `_glasses` Outside `setState()`**

When `_glasses` is modified outside `setState()`, its value may change internally, but Flutter is not notified to rebuild the interface. As a result, the displayed number of glasses and progress bar may not update immediately. Calling `setState()` is important because it informs Flutter that the widget's state has changed and that the interface needs to be rebuilt.

**Activity 3 – Removing `Expanded` from a StatBox**

Without `Expanded`, the `StatBox` no longer shares the available horizontal space equally with the other boxes. This can cause uneven spacing or possible overflow depending on the screen size. Using `Expanded` allows the boxes to distribute the available width evenly, resulting in a more organized and responsive layout.

**Activity 5 – Changing the Button Corner Radius**

The `ElevatedButton` corner radius was changed from 8 to 20 in `buildTheme()`. This makes the button corners more rounded and gives the interface a softer appearance. Because the change is applied through `ThemeData`, the customized style can be shared by all `ElevatedButton` widgets in the application.

## 4. Review Questions

**1. What is the difference between a StatelessWidget and a StatefulWidget? Give one example of each from this lab.**

A `StatelessWidget` does not manage changing state within itself. An example is the `ProfileCard` in Activity 1, which displays fixed information. A `StatefulWidget` can update its interface when its state changes. An example is the `WaterTrackerPage` in Activity 2, which updates the number of glasses whenever the user presses a button.

**2. Why is a StatefulWidget written as two classes? What does each class do?**

A `StatefulWidget` uses two classes to separate the widget configuration from its changing state. The first class defines the widget and creates its State object through `createState()`. The second class stores changing values and contains the `build()` method that creates the user interface. This structure allows the application to update its appearance whenever the state changes.

**3. In Activity 2, what happened when you changed `_glasses` outside `setState()`? Why?**

Changing `_glasses` outside `setState()` does not immediately notify Flutter to rebuild the interface. Although the variable may change internally, the displayed counter and progress bar may remain unchanged until another rebuild occurs. Using `setState()` ensures that Flutter refreshes the interface after the data changes.

**4. Looking at the Debug Console in Activity 2, when is `build()` called?**

The `build()` method is called when the widget is initially displayed and whenever `setState()` triggers a rebuild. In Activity 2, it is called when the user adds or removes a glass or resets the counter. The Debug Console output also shows that the method can be called again even when the displayed