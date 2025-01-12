import "package:flutter_test/flutter_test.dart";
import "package:flutter_test_proj/counter.dart";

main() {
  group('Counter class: ', () {
    late Counter testCounter = Counter();

    setUp(() => {testCounter = Counter()});
    //GIVEN WHEN THEN
    test('Given Counter class, when instantiated, then count = 0', () {
      //ARRANGE
      int count = testCounter.count;
      //ASSERT
      expect(count, 0);
    });
    //just testing out the group in increment if there are more incrmeent function
    test(
        'Given counter class is instantiated, when increment count is called, then count is = 1',
        () {
      testCounter.incrementCount();

      expect(testCounter.count, 1);
    });

    test(
        'Given counter class is instantiated, when increment count is called 4 times, then count is increases to 1,3,6 and 10',
        () {
      testCounter.incrementCount();
      expect(testCounter.count, 1);

      testCounter.incrementCount();
      expect(testCounter.count, 3);

      testCounter.incrementCount();
      expect(testCounter.count, 6);

      testCounter.incrementCount();
      expect(testCounter.count, 10);
    });

    test(
        'Given counter class is instantiated, when increment count is called, then count is = 0',
        () {
      testCounter.decrementCount();

      expect(testCounter.count, 0);
    });

    test(
        'Given counter class is instantiated, when reset count is called and when increment count is called, count = 0',
        () {
      testCounter.incrementCount();
      testCounter.resetCount();
      expect(testCounter.count, 0);
    });
  });
}
