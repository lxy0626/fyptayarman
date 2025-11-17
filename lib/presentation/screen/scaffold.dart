import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final bool? showBackButtonOverride;
  final Widget? bottomNav;

  const PageScaffold({
    super.key,
    required this.title,
    required this.child,
    this.showBackButtonOverride,
    this.bottomNav,
  });

  bool _shouldShowBackButton(BuildContext context) {
    if (showBackButtonOverride != null) return showBackButtonOverride!;
    return Navigator.canPop(context);
  }

  @override
  Widget build(BuildContext context) {
    final showBackButton = _shouldShowBackButton(context);

    return Scaffold(
      resizeToAvoidBottomInset: false, // <-- key line
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            bottom: false,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Row(
                children: [
                  if (showBackButton)
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      color: Colors.white,
                      iconSize: 20,
                      onPressed: () => Navigator.pop(context),
                    ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: child,
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNav,
    );
  }
}
