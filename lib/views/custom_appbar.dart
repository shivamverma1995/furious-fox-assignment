import 'package:flutter/material.dart';
import 'package:furious_fox_assignment/views/styles.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.network(
                "data:image/png;base64,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",
                fit: BoxFit.fill,
                height: 100,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    fillColor: Colors.blue[50],
                    filled: true,
                    isDense: true,
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(48)),
                    hintText: "Search"),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 233, 201),
                  borderRadius: BorderRadius.circular(32)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      "Shopbuzz",
                      style: profileCardHeading.copyWith(fontSize: 16),
                    ),
                  ),
                  Icon(MdiIcons.cart)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(MdiIcons.bell),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CircleAvatar(
                    radius: 16,
                    foregroundImage: NetworkImage(
                        "https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2021/3/27/eybpyvzyatgki6rdee3y/max-verstappen-pole"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
