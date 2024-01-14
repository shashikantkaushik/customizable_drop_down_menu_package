library customizable_dropdown_menu;

import 'package:flutter/material.dart';

class CustomizableDropDown extends StatefulWidget {
  CustomizableDropDown({
    Key? key,
    this.title,
    this.dropDownMenuColor = Colors.white,
    this.dropDownTextColor = Colors.black,
    this.textfieldTextColor = Colors.black,
    this.titleColor = Colors.black,
    this.selectedTextColor = Colors.white,
    this.selectedTextSize = 15.0,
    this.multiselect = true,
    this.dropDownContainerColor = Colors.white,
    this.selectedItemColor = Colors.deepOrangeAccent,
    required this.textController,
    required this.items,
    required this.onSelectionChange,
    required this.selectedItems,
  }) : super(key: key);

  String? title;
  final TextEditingController textController;
  final List<String> items;
  final Function(List<String>)? onSelectionChange;
  List<String> selectedItems = [];
  Color? titleColor;
  Color? dropDownTextColor;
  Color? selectedTextColor;
  double selectedTextSize;
  Color? selectedItemColor;
  Color? dropDownMenuColor;
  Color? textfieldTextColor;
  Color? dropDownContainerColor;
  bool? multiselect;

  @override
  State<CustomizableDropDown> createState() => _CustomizableDropDownState();
}

class _CustomizableDropDownState extends State<CustomizableDropDown> {
  bool _isTapped = false;
  List<String> _filteredItems = [];

  @override
  void initState() {
    _filteredItems = widget.items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (_isTapped) {
          setState(() {
            _isTapped = false;
          });
        }
      },
      child: Container(
        color: widget.dropDownContainerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.title != null && widget.title!.isNotEmpty)
              Text(
                widget.title!,
                style: TextStyle(fontSize: 16, color: widget.titleColor),
              ),
            Container(
              child: Column(
                children: [
                  if (widget.selectedItems.isEmpty ||
                      _isTapped ||
                      widget.multiselect != true)
                    TextFormField(
                      controller: widget.textController,
                      onChanged: (val) {
                        setState(() {
                          _filteredItems = widget.items
                              .where((item) => item
                              .toLowerCase()
                              .contains(val.toLowerCase()))
                              .toList();
                        });
                      },
                      validator: (val) =>
                      val!.isEmpty ? 'Field can\'t be empty' : null,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      onTap: () {
                        setState(() => _isTapped = true);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        errorStyle: const TextStyle(fontSize: 0.01),
                        contentPadding:
                        const EdgeInsets.only(bottom: 0, left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.7), width: 0.8),
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: _isTapped
                            ? IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            setState(() {
                              _isTapped = false;
                              widget.textController.text = '';
                            });
                            if (widget.onSelectionChange != null) {
                              widget.onSelectionChange!(
                                  widget.selectedItems);
                            }
                          },
                        )
                            : Icon(Icons.arrow_drop_down, size: 25),
                        isDense: true,
                      ),
                    ),
                  widget.selectedItems.isNotEmpty &&
                      widget.multiselect == true
                      ? InkWell(
                    onTap: () {
                      setState(() {
                        _isTapped = true;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 40.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.selectedItems.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: widget.selectedItemColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      widget.selectedItems[index],
                                      style: TextStyle(
                                        color: widget.selectedTextColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: widget.selectedTextSize,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        size: widget.selectedTextSize,
                                        color: widget.selectedTextColor,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          widget.selectedItems
                                              .removeAt(index);
                                        });
                                        if (widget.onSelectionChange !=
                                            null) {
                                          widget.onSelectionChange!(
                                              widget.selectedItems);
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Divider(
                          color: Colors.black.withOpacity(0.5),
                          thickness: 0.5,
                        ),
                      ],
                    ),
                  )
                      : const SizedBox.shrink(),
                  _isTapped
                      ? Container(
                    height: 150.0,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView.builder(
                      itemCount: _filteredItems.length,
                      itemBuilder: (context, index) {
                        final item = _filteredItems[index];
                        return widget.multiselect == true
                            ? CheckboxListTile(
                          title: Text(
                            item,
                            style: TextStyle(
                              color: widget.dropDownTextColor,
                              fontSize: 16.0,
                            ),
                          ),
                          value: widget.selectedItems.contains(item),
                          onChanged: (bool? value) {
                            setState(() {
                              if (value!) {
                                widget.selectedItems.add(item);
                              } else {
                                widget.selectedItems.remove(item);
                              }
                            });
                            if (widget.onSelectionChange != null) {
                              widget.onSelectionChange!(
                                  widget.selectedItems);
                            }
                          },
                        )
                            : Container(
                          child: ListTile(
                            title: Text(
                              item,
                              style: TextStyle(
                                color: widget.dropDownTextColor,
                                fontSize: 16.0,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                widget.selectedItems.clear();
                                widget.selectedItems.add(item);
                                widget.textController.text = item;
                                _isTapped = false;
                              });
                              if (widget.onSelectionChange !=
                                  null) {
                                widget.onSelectionChange!(
                                    widget.selectedItems);
                              }
                            },
                          ),
                        );
                      },
                    ),
                  )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

