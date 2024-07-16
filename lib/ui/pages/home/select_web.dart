// // ignore: avoid_web_libraries_in_flutter
// import 'dart:html' as html;
// import 'package:flutter/material.dart';
// import 'package:js/js.dart';
// import 'dart:ui_web';

// @JS()
// @anonymous
// class Option {
//   external String get value;
//   external String get text;
//   external factory Option({String value, String text});
// }

// class SelectWeb extends StatefulWidget {
//   final List<Option> options;
//   final void Function(String)? onChanged;

//   const SelectWeb({super.key, required this.options, this.onChanged});

//   @override
//   State<SelectWeb> createState() => _SelectWebState();
// }

// class _SelectWebState extends State<SelectWeb> {
//   late html.SelectElement _selectElement;

//   @override
//   void initState() {
//     super.initState();
//     _selectElement = html.SelectElement();

//     for (var option in widget.options) {
//       final html.OptionElement optionElement = html.OptionElement()
//         ..value = option.value
//         ..text = option.text;
//       _selectElement.append(optionElement);
//     }

//     _selectElement.onChange.listen((event) {
//       final selectedValue = _selectElement.value;
//       if (widget.onChanged != null) {
//         widget.onChanged!(selectedValue!);
//       }
//     });

//     // Register the custom HTML element view type
//     // We use a unique view type for this instance
//     final viewType = 'select-web-${_selectElement.hashCode}';
//     // Register the view factory
//     platformViewRegistry.registerViewFactory(
//       viewType,
//       (int viewId) => _selectElement,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Register the custom HTML element view type
//     return HtmlElementView(viewType: "select-web-${_selectElement.hashCode}");
//   }

//   @override
//   void didUpdateWidget(SelectWeb oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.options != oldWidget.options) {
//       _selectElement.children.clear();
//       for (var option in widget.options) {
//         final html.OptionElement optionElement = html.OptionElement()
//           ..value = option.value
//           ..text = option.text;
//         _selectElement.append(optionElement);
//       }
//     }
//   }
// }
