import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rxdart/rxdart.dart';

class FirstPage extends HookWidget {
  const FirstPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final subject = useMemoized(
      (() => BehaviorSubject<String>()),
      [key],
    );

    useEffect(
      (() => subject.close),
      [subject],
    );

    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<String>(
          stream: subject.stream.distinct().debounceTime(
                const Duration(seconds: 1),
              ),
          builder: (context, snapshot) {
            return Text(
              snapshot.requireData,
            );
          },
          initialData: 'Please start typing...',
        ),
      ),
      body: TextField(
        onChanged: subject.sink.add,
      ),
    );
  }
}
