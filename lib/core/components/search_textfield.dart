import 'dart:async';

import 'package:flutter/material.dart';
import 'package:techrar_captain/core/exports/core.dart';

@immutable
class SearchTextField extends StatefulWidget {
  /// A reusable textfield that debounces the search query and helps to avoid frequent server
  /// calls when the user is typing.
  const SearchTextField({
    super.key,
    this.debounceTime = const Duration(milliseconds: 500),
    this.debounceSearch = true,
    this.onSearch,
    this.minValidQueryLength = 3,
    this.initialValue,
  });

  final Duration debounceTime;
  final bool debounceSearch;
  final int minValidQueryLength;
  final String? initialValue;
  final ValueChanged<String>? onSearch;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  Timer? _debouncer;
  String? _lastQuery;
  late final TextEditingController _queryController;

  @override
  void initState() {
    _lastQuery = widget.initialValue;
    _queryController = TextEditingController(text: widget.initialValue);
    super.initState();
  }

  /// Function run when the user types in the search field
  void _onChanged(String query) {
    if (widget.debounceSearch) {
      _debouncer?.cancel();
      _debouncer = Timer(widget.debounceTime, () {
        if (_lastQuery != query && (query.isEmpty || query.length >= widget.minValidQueryLength)) {
          _lastQuery = query;
          widget.onSearch?.call(query);
        }
      });
    } else {
      widget.onSearch?.call(query);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RoundedTextFormField(
      textController: _queryController,
      parentDispose: true,
      borderRadius: Borders.sBorderRadius,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      title: 'search'.translate,
      hint: 'search_hint'.translate,
      trailingIcon: Icons.search,
      fillColor: kLightGrey,
      isBordered: false,
      onChanged: (String query) => _onChanged(query.trim()),
    );
  }

  @override
  void dispose() {
    _debouncer?.cancel();
    _lastQuery = null;
    _queryController.dispose();
    super.dispose();
  }
}
