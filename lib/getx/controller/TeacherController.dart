import 'package:get/get.dart';
import 'package:wan/bean/Teacher.dart';

class TeacherController extends GetxController {
  var teacher = Teacher();

  @override
  void onInit() {
    // 初始化
    ever(teacher.name, (callback) => {print("once ever 当这个值发生改变的时候调用")});
    everAll(
        [teacher.name, teacher.age],
        (callback) =>
            {print("once everall 当这个值发生改变的时候调用${teacher.age}:::::${teacher.age}")});
    // count值改变时调用,只执行一次
    once(teacher.age, (callback) => print("once----${teacher.age}"));

    // 用户停止打字时1秒后调用,主要是防DDos
    debounce(teacher.age, (callback) => print("once debounce----${teacher.name}"));

    // 忽略3秒内的所有变动
    interval(teacher.age, (callback) => print("once interval----${teacher.age}"));

    super.onInit();
  }

  @override
  void onReady() {
    // 加载完成

    super.onReady();
  }
  @override
  void onClose() {
    // 控制器被释放
    super.onClose();
  }
  void convertToUpperCase() {
    teacher.name.value = teacher.name.value.toUpperCase();
    teacher.age.value = teacher.age.value++;
    update(["ceshi"]);
  }
}
