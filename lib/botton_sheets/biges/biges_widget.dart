import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'biges_model.dart';
export 'biges_model.dart';

class BigesWidget extends StatefulWidget {
  const BigesWidget({super.key});

  @override
  State<BigesWidget> createState() => _BigesWidgetState();
}

class _BigesWidgetState extends State<BigesWidget> {
  late BigesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BigesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: SizedBox(
        width: double.infinity,
        height: 500.0,
        child: Stack(
          children: [
            PageView(
              controller: _model.buildingImagesController ??=
                  PageController(initialPage: 0),
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/35/12/e2/3512e295e889104d916b05491ef508d7.jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/ff/90/ba/ff90bad04fcce654388405a0a8a4b2fe.jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/86/d1/a1/86d1a1d738e42cc0335af71fe2d431ad.jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: smooth_page_indicator.SmoothPageIndicator(
                  controller: _model.buildingImagesController ??=
                      PageController(initialPage: 0),
                  count: 3,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (i) async {
                    await _model.buildingImagesController!.animateToPage(
                      i,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                    setState(() {});
                  },
                  effect: smooth_page_indicator.ExpandingDotsEffect(
                    expansionFactor: 3.0,
                    spacing: 8.0,
                    radius: 16.0,
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    dotColor: const Color(0x93FFFFFF),
                    activeDotColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
