

The CustomizableDropDown is meticulously crafted from the ground up, providing a truly bespoke user experience. Offering a plethora of customization options, you have the freedom to tailor every aspect of the dropdown to your liking. Whether it's the vibrant color palette that catches your eye or the seamless integration of search functionality, this widget puts you in control.

Notably, you can effortlessly toggle between single and multi-select modes, adapting the dropdown behavior according to your specific requirements. The extensive color customization options empower you to harmonize the widget with your app's visual identity, ensuring a cohesive and aesthetically pleasing design.

Moreover, the inclusion of a search feature adds a layer of convenience, enabling users to swiftly locate their desired items within the dropdown. It's not just a dropdown; it's a dynamic, user-centric component designed to elevate the interactive elements of your application.

In essence, this CustomizableDropDown transcends the conventional dropdown paradigm, offering an unparalleled level of flexibility and user engagement. Tailor it to your needs, immerse it in your color scheme, and let it seamlessly integrate into your application, providing a polished and cohesive user interface.
## Features

1. **Color Customization:**
    - Tailor the colors of the dropdown menu, text fields, and other UI elements to seamlessly integrate with your app's design.

2. **Single or Multi-Select Modes:**
    - Easily switch between single and multi-select modes based on your application's requirements.

3. **Search Functionality:**
    - Enable users to quickly find items in the dropdown through a user-friendly search feature.

4. **Dynamic Dropdown Animation:**
    - Add smooth and customizable animations for the dropdown's opening and closing, enhancing the overall user experience.

5. **Dropdown Arrow Icon Customization:**
    - Customize the appearance of the dropdown arrow icon, providing a cohesive look with your app's theme.

6. **Adjustable Dropdown Height and Width:**
    - Set custom dimensions for the dropdown menu to suit your layout preferences.

7. **Individual Item Styling:**
    - Customize the appearance of individual items in the dropdown, including text color, background color, and font size.

8. **Callback Function on Item Selection:**
    - Implement a callback function to receive notifications when an item is selected.

9. **Custom Validators for Text Field:**
    - Define custom validation logic for the text field, ensuring data integrity.

10. **Dropdown Item Icons:**
    - Display icons alongside dropdown items for a more visually engaging experience.

11. **Placeholder Text:**
    - Set placeholder text for the text field, guiding users on the expected input.

12. **Full Text Field Decoration Control:**
    - Have complete control over the decoration of the text field, allowing for seamless integration with your app's UI.

13. **Dropdown Header and Footer:**
    - Add custom header and footer sections to the dropdown menu for additional information or actions.

14. **Extensive Keyboard Actions:**
    - Support keyboard actions, such as closing the dropdown on "Done" or "Enter" press.

15. **Accessibility Features:**
    - Ensure the widget is accessible by incorporating appropriate labels and compatibility with screen readers.

16. **Dropdown Scroll Physics:**
    - Customize the scroll physics of the dropdown menu for a tailored scrolling experience.

17. **Error Text Styling:**
    - Style the error text appearance for a consistent and visually appealing UI.

18. **Dropdown Alignment Options:**
    - Choose from various alignment options for the dropdown menu, including top, bottom, or center.

19. **Customizable Dropdown Trigger Area:**
    - Specify a custom trigger area for opening the dropdown, giving you control over user interactions.

20. **Engaging User Interface:**
    - Elevate your application's interactive elements with a polished and user-centric dropdown menu.

## Examples

# Getting started

## Prerequisites
Before integrating the CustomizableDropDown package into your Flutter project, ensure you have the following prerequisites:

1. **Flutter SDK:**
    - Make sure you have Flutter installed. If not, you can download and install it from [Flutter.dev](https://flutter.dev/docs/get-started/install).

2. **Dart SDK:**
    - Ensure that Dart SDK is installed along with Flutter. The Flutter SDK includes Dart, so you generally don't need to install it separately.

3. **IDE (Integrated Development Environment):**
    - Use a compatible IDE for Flutter development, such as [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

## Installation

To start using the CustomizableDropDown package, follow these steps:

1. Open your Flutter project in your preferred IDE.

2. Add the following dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     customizable_dropdown_menu: ^1.0.0

## Usage
Here's a basic example of how to use the CustomizableDropDown widget:

```dart
import 'package:flutter/material.dart';
import 'package:customizable_dropdown_menu/customizable_dropdown_menu.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text('CustomizableDropDown Example'),
),
body: Center(
child: CustomizableDropDown(
textController: TextEditingController(),
items: ['Item 1', 'Item 2', 'Item 3'],
onSelectionChange: (selectedItems) {
// Handle the selected items
print(selectedItems);
},
),
),
),
);
}
}

```

<br>

## :bug: Issues

Feel free to **file a new issue** with a respective title and description on the [Flipkart Review Scrapper](https://github.com/shashikantkaushik/flipkart_review_scrapper_DS/issues) repository. If you already found a solution to your problem, **I would love to review your pull request**! Have a look at our [contribution guidelines](https://github.com/shashikantkaushik/shashikantkaushik/blob/main/CONTRIBUTING.md) to find out about the coding standards.

<br>

## :tada: Contributing

Check out the [contributing](https://github.com/shashikantkaushik/shashikantkaushik/blob/main/CONTRIBUTING.md) page to see the best places to file issues, start discussions and begin contributing.

<br>

## :closed_book: License
This project is open source and available under the MIT License.


<br>

##### Made with love by [Shashi Kant](https://github.com/shashikantkaushik) 💜🚀

```


