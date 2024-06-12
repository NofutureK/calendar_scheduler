import 'package:flutter/material.dart';
import 'package:calendar_scheduler/const/colors.dart';  // 'flutter/calendar_scheduler/const/colors.dart'가 아닌 'calendar_scheduler/const/colors.dart'로 수정

class TodayBanner extends StatelessWidget {
  final DateTime selectedDate;
  final int count;

  const TodayBanner({
    required this.selectedDate,
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    return Container(
      color: PRIMARY_COLOR,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${selectedDate.year}년 ${selectedDate.month}월 ${selectedDate.day}일',
              style: textStyle,  // 'txtStyle'가 아닌 'textStyle'로 수정
            ),
            Text(
              '$count개',
              style: textStyle,
            ),
          ],
        ),
      ),
    );  // return 문이 닫히지 않은 오류 수정
  }
}