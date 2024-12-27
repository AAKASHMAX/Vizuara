import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.white,
          child: Center(
            child: Image.asset(
              'assets/images/logo2Asset_1.png',
              width: 160.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'SighIn': ParameterData.none(),
  'Home': ParameterData.none(),
  'SighUp': ParameterData.none(),
  'Classes': ParameterData.none(),
  'Class9th': ParameterData.none(),
  'Class9th_Topics': (data) async => ParameterData(
        allParams: {
          'class9thChapterDetail':
              getParameter<DocumentReference>(data, 'class9thChapterDetail'),
        },
      ),
  'Class9th_Topic_detail': (data) async => ParameterData(
        allParams: {
          'class9thChapterDetail':
              getParameter<DocumentReference>(data, 'class9thChapterDetail'),
          'topicdetail': getParameter<DocumentReference>(data, 'topicdetail'),
        },
      ),
  'DashBoard': ParameterData.none(),
  'Userdashboard': ParameterData.none(),
  'Quiz9th': (data) async => ParameterData(
        allParams: {
          'class9thChapterDetail':
              getParameter<DocumentReference>(data, 'class9thChapterDetail'),
        },
      ),
  'Class9th_Quiz': (data) async => ParameterData(
        allParams: {
          'class9thref': getParameter<DocumentReference>(data, 'class9thref'),
        },
      ),
  'Pricing': ParameterData.none(),
  'NotificationPage': ParameterData.none(),
  'NotificationVideo': (data) async => ParameterData(
        allParams: {
          'notification': getParameter<DocumentReference>(data, 'notification'),
        },
      ),
  'NotificationNotes': (data) async => ParameterData(
        allParams: {
          'notification': getParameter<DocumentReference>(data, 'notification'),
        },
      ),
  'NotificationQPaper': (data) async => ParameterData(
        allParams: {
          'notification': getParameter<DocumentReference>(data, 'notification'),
        },
      ),
  'Notes': (data) async => ParameterData(
        allParams: {
          'class9thEnglish':
              getParameter<DocumentReference>(data, 'class9thEnglish'),
        },
      ),
  'Memebership': ParameterData.none(),
  'Class9th_Notes': (data) async => ParameterData(
        allParams: {
          'class9th': getParameter<DocumentReference>(data, 'class9th'),
        },
      ),
  'test': ParameterData.none(),
  'Class10th': ParameterData.none(),
  'Class9th_Question': (data) async => ParameterData(
        allParams: {
          'class9th': getParameter<DocumentReference>(data, 'class9th'),
        },
      ),
  'Class10th_Quiz': (data) async => ParameterData(
        allParams: {
          'class10ref': getParameter<DocumentReference>(data, 'class10ref'),
        },
      ),
  'Class10th_Question': (data) async => ParameterData(
        allParams: {
          'class10th': getParameter<DocumentReference>(data, 'class10th'),
        },
      ),
  'Class10th_Notes': (data) async => ParameterData(
        allParams: {
          'class10th': getParameter<DocumentReference>(data, 'class10th'),
        },
      ),
  'Class10th_Topics': (data) async => ParameterData(
        allParams: {
          'class10thChapterDetail':
              getParameter<DocumentReference>(data, 'class10thChapterDetail'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
