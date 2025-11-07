import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final bool? showBackButtonOverride;

  const PageScaffold({
    super.key,
    required this.title,
    required this.child,
    this.showBackButtonOverride,
  });

  bool _shouldShowBackButton(BuildContext context) {
    // 👇 Use override if provided
    if (showBackButtonOverride != null) return showBackButtonOverride!;

    // 👇 Hide back button if there's no previous route
    return Navigator.canPop(context);
  }

  @override
  Widget build(BuildContext context) {
    final showBackButton = _shouldShowBackButton(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 👇 Row for back button + title
              Row(
                children: [
                  if (showBackButton)
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: Colors.black87,
                      iconSize: 20,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
