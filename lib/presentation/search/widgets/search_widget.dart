import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        _resetToIdle();
      } else {
        setState(() {
          _isFocused = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque, // Ensure that taps are detected
      onTap: () {
        if (_isFocused) {
          _resetToIdle(); // Reset when tapping outside the text field
        }
      },
      child: Padding(
        padding: kPadding10,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CupertinoSearchTextField(
              controller: _textEditingController,
              focusNode: _focusNode,
              prefixInsets: EdgeInsets.only(left: _isFocused ? 22 : 0),
              backgroundColor: kGreyColor.withOpacity(0.25),
              prefixIcon: const SizedBox.shrink(),
              placeholder: '',
              padding: kPadding10,
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: kGreyColor,
                size: 24,
              ),
              onChanged: (value) {
                setState(() {
                  _isFocused = value.isNotEmpty || _focusNode.hasFocus;
                });
              },
              onSubmitted: (value) {
                _resetToIdle();
              },
              style: const TextStyle(color: kWhiteColor, fontSize: 17),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: _isFocused ? 0 : 140,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    CupertinoIcons.search,
                    color: kGreyColor,
                    size: 24,
                  ),
                  kWidth10,
                  Text(_textEditingController.text.isEmpty ? 'Search' : '',
                      style: const TextStyle(color: kGreyColor, fontSize: 17)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _resetToIdle() {
    _textEditingController.clear();
    _focusNode.unfocus();
    setState(() {
      _isFocused = false;
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
