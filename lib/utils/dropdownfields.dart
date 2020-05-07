library dropdown_formfield;

import 'package:flutter/material.dart';
class DropDownFormField extends FormField<dynamic> {
  // final String titleText;
  final String hintText;
  final bool required;
  final String errorText;
  final dynamic value;
  final List dataSource;
  final String textField;
  final String valueField;
  final Function onChanged;
  final TextStyle hintStyle;
  DropDownFormField(
      {FormFieldSetter<dynamic> onSaved,
        FormFieldValidator<dynamic> validator,
        bool autovalidate = false,
        this.hintStyle,
        //    this.titleText = 'Title',
        this.hintText = 'Select one option',
        this.required = false,
        this.errorText = 'Please select one option',
        this.value,
        this.dataSource,
        this.textField,
        this.valueField,
        this.onChanged})
      : super(
    onSaved: onSaved,
    validator: validator,
    autovalidate: autovalidate,
    builder: (FormFieldState<dynamic> state) {
      return Container(
        width: 250,
        child: InputDecorator(
          decoration: InputDecoration(
            isDense: true,
            fillColor: Colors.transparent,
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(12, 5, 8, 0),
            filled: true,
          ),
          child: DropdownButton<dynamic>(
            underline: Container(),
            isExpanded: true,
            hint: Text(
              hintText,
              style: hintStyle == null ? TextStyle() : hintStyle,
            ),
            value: value == '' ? null : value,
            onChanged: (dynamic newValue) {
              state.didChange(newValue);
              onChanged(newValue);
            },
            items: dataSource.map((item) {
              return DropdownMenuItem<dynamic>(
                value: item[valueField],
                child: Text(item[textField]),
              );
            }).toList(),
          ),
        ),
      );
    },
  );
}