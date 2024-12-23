import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'dart:async';

class TimeDisplayScreen extends StatefulWidget {
  @override
  _TimeDisplayScreenState createState() => _TimeDisplayScreenState();
}

class _TimeDisplayScreenState extends State<TimeDisplayScreen> {
  String _currentTime = "";
  String _currentDate = "";
  bool _showNotification = false;
  bool _isCompanySelected = false;
  String? _selectedCompany;

  @override
  void initState() {
    super.initState();
    _updateTime();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());
  }

  void _updateTime() {
    final now = DateTime.now();
    setState(() {
      _currentTime = "${now.hourOf12.toString().padLeft(2, '0')}:"
          "${now.minute.toString().padLeft(2, '0')}:"
          "${now.second.toString().padLeft(2, '0')} ${now.period}";
      _currentDate = "${now.day.toString().padLeft(2, '0')} "
          "${_getMonthName(now.month)} ${now.year}";
    });
  }

  String _getMonthName(int month) {
    const months = [
      "January", "February", "March", "April", "May", "June", "July",
      "August", "September", "October", "November", "December"
    ];
    return months[month - 1];
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("ABC Pvt Ltd"),
                        ),
                      ),
                      Radio<String>(
                        value: 'ABC Pvt Ltd',
                        groupValue: _selectedCompany,
                        onChanged: (value) {
                          setState(() {
                            _selectedCompany = value;
                            _isCompanySelected = true;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("XYZ Pvt Ltd"),
                        ),
                      ),
                      Radio<String>(
                        value: 'XYZ Pvt Ltd',
                        groupValue: _selectedCompany,
                        onChanged: (value) {
                          setState(() {
                            _selectedCompany = value;
                            _isCompanySelected = true;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Slide action, grey when not selected, blue when selected
                  SlideAction(
                    text: "Swipe to Complete",
                    textStyle: TextStyle(fontSize: 16, color: Colors.white),
                    outerColor: _isCompanySelected ? Colors.blue : Colors.grey,
                    innerColor: Colors.white,
                    onSubmit: _isCompanySelected ? _showSuccessNotification : null,
                    sliderButtonIcon: Icon(Icons.check, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _showSuccessNotification() async {
    Navigator.pop(context);
    setState(() {
      _showNotification = true;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _showNotification = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _currentTime,
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  _currentDate,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: _showBottomSheet,
                  splashColor: Colors.blue.withOpacity(0.4),
                  highlightColor: Colors.blue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.swipe_up, color: Colors.white, size: 36),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: _showNotification ? 20 : -100,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Success",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension TimeFormatter on DateTime {
  int get hourOf12 => this.hour % 12 == 0 ? 12 : this.hour % 12;
  String get period => this.hour >= 12 ? "PM" : "AM";
}
