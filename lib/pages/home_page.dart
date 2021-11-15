import 'package:contador/controllers/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contadorCtrl = Get.find<ContadorController>();
    // return GetBuilder<ContadorController>(
    //   init: ContadorController(),
    //   builder: (_) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: Text('HomePage'),
    //     ),
    //     body: Center(
    //       child: Text(_.valor.toString()),
    //     ),
    //     floatingActionButton: Row(
    //       mainAxisAlignment: MainAxisAlignment.end,
    //       children: [
    //         FloatingActionButton(
    //           child: Icon(Icons.add),
    //           onPressed: () => _.incrementar()
    //           ),
    //           FloatingActionButton(
    //           child: Icon(Icons.remove),
    //           onPressed: () => _.decrementar()
    //           ),
    //       ],
    //     ),
    //   );
    // });
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: GetBuilder<ContadorController>(
        init: ContadorController(),
        builder: (_) {
        return Center(
          child: Text(_.valor.toString()),
        );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add), onPressed: () => contadorCtrl.incrementar()),
          FloatingActionButton(
              child: Icon(Icons.remove), onPressed: () => contadorCtrl.decrementar()),
        ],
      ),
    );
  }
}
