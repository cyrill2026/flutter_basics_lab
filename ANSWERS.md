# ITE120 Laboratory Answers

**Name:** RJ Cyrill Jirc L. Monzon  
**Student ID:** 241-01146  
**Section:** ILFV3  
**Project:** Flutter Architecture, Widgets and Basic UI

## 1. GitHub repository link
Add your repository URL here only if you create and push this project to GitHub. Do not submit a placeholder as a real link.

## 2. Last three `build() called` lines from Activity 2
Run Activity 2, tap the plus button several times, and copy the last three actual lines from VS Code's Debug Console here. Do not invent these logs; they depend on your actual run.

## 3. Experiment observations (expected behavior — verify with your actual run)

**Activity 2 — changing `_glasses` outside `setState()`**  
When the value is changed outside `setState()`, the number may change in the variable, but Flutter is not told to rebuild the screen. The displayed count and progress bar may not update until another rebuild happens. After trying this experiment, restore the increment inside `setState()`; verify the actual behavior during your run.

**Activity 3 — removing `Expanded` from a StatBox**  
Without `Expanded`, the box no longer shares the row's available width equally. The row may become uneven or overflow because each box takes the space it needs. `Expanded` makes the boxes share the available width.

**Activity 5 — changing the button corner radius**  
The provided code changes the ElevatedButton corner radius from 8 to 20. The button corners became more rounded, and the theme applies that style to ElevatedButtons in the app.

## 4. Review questions

**1. What is the difference between a StatelessWidget and a StatefulWidget? Give one example of each from this lab.**  
A StatelessWidget does not keep changing data on its own after it is built. The ProfileCard in Activity 1 is an example. A StatefulWidget can update its screen when its state changes. The WaterTrackerPage in Activity 2 is an example.

**2. Why is a StatefulWidget written as two classes? What does each class do?**  
The StatefulWidget class creates the widget and its State object. The State class stores the changing values and builds the screen again when the state changes.

**3. In Activity 2, what happened when you changed `_glasses` outside `setState()`? Why?**  
The screen did not immediately update because Flutter was not notified to rebuild. Changes that should refresh the UI need to happen inside `setState()`.

**4. Looking at the Debug Console in Activity 2, when is `build()` called?**  
It is called when the page is first built and again when `setState()` causes the page to rebuild, such as after adding or removing a glass or resetting the tracker.

**5. Explain the main axis and the cross axis of a Row and of a Column.**  
For a Row, the main axis goes horizontally and the cross axis goes vertically. For a Column, the main axis goes vertically and the cross axis goes horizontally.

**6. In Activity 3, what happened when you removed `Expanded` from a StatBox? What does `Expanded` do?**  
The boxes no longer shared the row width equally and could become uneven or overflow. Expanded lets a child use a share of the remaining available space.

**7. Why do we use `GridView.builder` for the menu instead of a Column with many children?**  
GridView.builder arranges menu items in a grid and builds items as needed while scrolling. A Column places children in one vertical list and is less suitable for a large, scrollable grid.

**8. How do Stack and Positioned create the Best seller badge in Activity 4?**  
Stack places widgets on top of one another. Positioned places the Best seller badge at a specific location, such as the top-left corner of the menu card.

**9. What is the difference between customizing with ThemeData and with a style on one widget? Give one example of each from Activity 5.**  
ThemeData sets shared styles for the app, such as the app color scheme and ElevatedButton style. A style on one widget affects that specific widget, such as setting a Text widget's font size.

**10. When you flip the dark-mode switch in Activity 5, which widget holds the state, and how does the change reach MaterialApp?**  
`_ThemeDemoAppState` stores the `_isDark` value. The switch calls `_setDark`, which updates the value inside `setState()`. MaterialApp rebuilds and uses `themeMode` to select the light or dark theme.

## Before submission
- [ ] Replace the sample Debug Console lines with the actual lines from your run.
- [ ] Add your GitHub repository link.
- [ ] Capture and save all seven required screenshots in `screenshots/`.
- [ ] Confirm the section is ILFV3 and the subject code is ITE120.
- [ ] Run all five activities and check for errors.
