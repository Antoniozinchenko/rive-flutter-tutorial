import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Header extends StatefulWidget {
  const Header({
    super.key,
  });

  static const minAppBarHeight = 80.0;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late final StateMachineController ctrl;
  SMINumber? progressInput;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SliverAppBar(
      pinned: true,
      collapsedHeight: Header.minAppBarHeight,
      expandedHeight: screenHeight,
      flexibleSpace: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          final progress = (constraints.maxHeight - Header.minAppBarHeight) /
              (screenHeight - Header.minAppBarHeight) *
              100;
          progressInput?.value = progress;
          return Center(
            child: RiveAnimation.asset(
              'assets/rive/logo.riv',
              stateMachines: const ['zoom'],
              onInit: _init,
            ),
          );
        }),
      ),
    );
  }

  void _init(artboard) {
    ctrl = StateMachineController.fromArtboard(artboard, 'zoom')!;
    progressInput = ctrl.inputs.first as SMINumber;
    artboard.addController(ctrl);
    setState(() {});
  }
}
