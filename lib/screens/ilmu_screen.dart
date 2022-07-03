import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tugas_akhir/components/constant.dart';
import 'package:flutter/material.dart';

import '../components/detail/detail_appbar.dart';
import '../components/detail/ilmu_detail.dart';
import '../models/ilmu.dart';

class IlmuScreen extends StatefulWidget {
  const IlmuScreen({
    Key? key,
    required this.ilmu,
  }) : super(key: key);

  final Ilmu ilmu;

  @override
  // ignore: library_private_types_in_public_api
  _IlmuScreenState createState() => _IlmuScreenState();
}

class _IlmuScreenState extends State<IlmuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 88, 88),
      appBar: const DetailAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.ilmu.image,
                  width: 175,
                  height: 267,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(spacer),
                  constraints: const BoxConstraints(
                    minHeight: 370 * 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IlmuDetail(ilmu: widget.ilmu),
                      SizedBox(height: spacer),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SfPdfViewer.asset(widget.ilmu.assets)),
                          );
                        },
                        minWidth: double.infinity,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: const Color.fromARGB(255, 250, 88, 88),
                        elevation: 0,
                        child: Text(
                          "Read Now",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: whiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
