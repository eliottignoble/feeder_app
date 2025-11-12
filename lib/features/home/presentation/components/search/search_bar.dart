import 'package:feeed/assets/colors.dart';
import 'package:flutter/material.dart';

class ClassicSearchBar extends StatefulWidget {
  const ClassicSearchBar({super.key, required this.onQueryChanged});

  final void Function(String) onQueryChanged;

  @override
  State<ClassicSearchBar> createState() => _ClassicSearchBarState();
}

class _ClassicSearchBarState extends State<ClassicSearchBar> {
  final TextEditingController _controller = TextEditingController();

  void clearInput() {
    _controller.clear();
    widget.onQueryChanged(''); // notifie le parent
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose(); // clean du controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: CustomColors.white,
        child: TextFormField(
          controller: _controller,
          onChanged: widget.onQueryChanged,
          decoration: InputDecoration(
            hintText: "Cherche un bon plan",
            hintStyle: TextStyle(color: CustomColors.grey),
            prefixIcon: Icon(Icons.search, color: CustomColors.grey),
            suffixIcon: _controller.text.isNotEmpty
                ? GestureDetector(
                    onTap: clearInput,
                    child: const Icon(Icons.clear_outlined),
                  )
                : null,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ),
    );
  }
}
