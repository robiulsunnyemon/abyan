
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/notification_card_widget.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildAppBar(context: context),
              ),
            ),
            SliverList.builder(
              itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(7),
                    child: NotificationCardWidget(),
                  );
                },
            ),
          ],
        )
      ),
    );
  }
  Widget _buildAppBar({required BuildContext context}) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.keyboard_arrow_left_rounded),
        ),
        SizedBox(width: 10),
        Spacer(),
        Text('Event Details', style: Theme.of(context).textTheme.titleLarge),
        Spacer(),
        SizedBox(width: 25,),
      ],
    );
  }
}
