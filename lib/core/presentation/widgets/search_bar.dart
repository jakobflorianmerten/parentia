import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/l10n/app_localizations.dart';

class CustomSearchBar extends StatefulWidget {

  final ValueChanged<String>? onChanged;

  const CustomSearchBar({super.key, this.onChanged});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Icon(Icons.search, size: 15),
          addHorizontalSpace(15),
          Expanded(
            child: TextField(
              controller: _searchController,
              onChanged: widget.onChanged,
              cursorColor: Theme.of(context).colorScheme.onSurface,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.search.toUpperCase(),
                hintStyle: TextStyle(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: .3),
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
