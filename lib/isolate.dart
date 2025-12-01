import 'dart:isolate';

void main() async {
  // Create a receive port to listen for messages from the isolate
  final receivePort = ReceivePort();

  // Spawn an isolate and send the receive port's sendPort to it
  await Isolate.spawn(isolateFunction, receivePort.sendPort);

  // Listen for messages from the isolate
  receivePort.listen((message) {
    print('Received message: $message');
    receivePort.close(); // Close the receive port when done
  });
}

// Function to be executed by the isolate
void isolateFunction(SendPort sendPort) {
  sendPort.send('Hello from the isolate!');
}
