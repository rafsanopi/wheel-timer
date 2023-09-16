import 'package:flutter/material.dart';
import 'package:test/time/inner_widget/am_pm.dart';
import 'package:test/time/inner_widget/hour.dart';
import 'package:test/time/inner_widget/minute.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({super.key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  int hour = 1;
  int min = 1;
  String amOrPm = "am";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          "Time is- $min : $hour  $amOrPm",
          style: const TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      min = value + 1;
                    });
                  },
                  perspective: 0.002,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 60,
                  diameterRatio: 1.2,
                  useMagnifier: true,
                  magnification: 1.4,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 12,
                    builder: (context, index) {
                      return Minutes(min: index + 1);
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      hour = value + 1;
                    });
                  },
                  perspective: 0.002,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  diameterRatio: 1.2,
                  useMagnifier: true,
                  magnification: 1.4,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 60,
                    builder: (context, index) {
                      return Hours(hours: index + 1);
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      if (value == 0) {
                        amOrPm = "am";
                      } else {
                        amOrPm = "pm";
                      }
                    });
                  },
                  perspective: 0.002,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  diameterRatio: 1.2,
                  useMagnifier: true,
                  magnification: 1.4,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 2,
                    builder: (context, index) {
                      if (index == 0) {
                        return const AmPm(isAm: true);
                      } else {
                        return const AmPm(isAm: false);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
