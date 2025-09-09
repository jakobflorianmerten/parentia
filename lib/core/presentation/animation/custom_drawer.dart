import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAnimationDrawer extends StatefulWidget {
  final Widget drawer;
  final Widget child;
  const CustomAnimationDrawer({
    super.key,
    required this.drawer,
    required this.child,
  });

  @override
  State<CustomAnimationDrawer> createState() => _CustomAnimationDrawerState();
}

class _CustomAnimationDrawerState extends State<CustomAnimationDrawer>
    with TickerProviderStateMixin {
  late AnimationController _xControllerForChild;
  late AnimationController _xControllerForDrawer;
  late DrawerControllerModel _drawerControllerModel;

  @override
  void initState() {
    super.initState();
    _xControllerForChild = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
    );
    _xControllerForDrawer = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _drawerControllerModel = Provider.of<DrawerControllerModel>(
      context,
      listen: false,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _drawerControllerModel.addListener(_externalToggle);
    });
  }

  @override
  void dispose() {
    _drawerControllerModel.removeListener(
      _externalToggle,
    ); // <--- nutze gespeicherte Referenz
    _xControllerForChild.dispose();
    _xControllerForDrawer.dispose();
    super.dispose();
  }

  void _externalToggle() {
    final ctrl = context.read<DrawerControllerModel>();
    if (ctrl.isOpen) {
      _xControllerForChild.forward();
      _xControllerForDrawer.forward();
    } else {
      _xControllerForChild.reverse();
      _xControllerForDrawer.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxDrag = screenWidth * 1;

    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        final delta = -details.delta.dx / maxDrag;
        _xControllerForChild.value = (_xControllerForChild.value + delta).clamp(
          0.0,
          1.0,
        );
        _xControllerForDrawer.value = (_xControllerForDrawer.value + delta)
            .clamp(0.0, 1.0);
      },
      onHorizontalDragEnd: (details) {
        final model = context.read<DrawerControllerModel>();
        if (_xControllerForChild.value < 0.5) {
          _xControllerForChild.reverse();
          _xControllerForDrawer.reverse();
          model.close();
        } else {
          _xControllerForChild.forward();
          _xControllerForDrawer.forward();
          model.open();
        }
      },
      child: AnimatedBuilder(
        animation: Listenable.merge([
          _xControllerForChild,
          _xControllerForDrawer,
        ]),
        builder: (context, child) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.green),
              ),
              Transform(
                child: widget.child,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..translate(-_xControllerForChild.value * maxDrag),
                alignment: Alignment.centerLeft,
              ),
              Transform(
                child: widget.drawer,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..translate(
                    screenWidth - _xControllerForDrawer.value * maxDrag,
                  ),
                alignment: Alignment.centerRight,
              ),
            ],
          );
        },
      ),
    );
  }
}

class DrawerControllerModel extends ChangeNotifier {
  bool _isOpen = false;
  bool get isOpen => _isOpen;

  void open() {
    _isOpen = true;
    notifyListeners();
  }

  void close() {
    _isOpen = false;
    notifyListeners();
  }

  void toggle() {
    _isOpen = !_isOpen;
    notifyListeners();
  }
}
