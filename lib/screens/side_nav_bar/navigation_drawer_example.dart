import 'package:flutter/material.dart';

import '../../widgets/build_menu_item.dart';

class SideNavigationBar extends StatefulWidget {
  @override
  _SideNavigationBarState createState() => _SideNavigationBarState();
}

class _SideNavigationBarState extends State<SideNavigationBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isCollapsed ? 70 : 300,
            color: Colors.grey.shade100,
            child: Column(
              children: [
                // Profile Section
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: isCollapsed
                      ? Container(
                          height: height * .05,
                          width: height * .05,
                          decoration: BoxDecoration(
                              color: Color(0xffffc2be),
                              borderRadius:
                                  BorderRadius.circular(height * .02)),
                          child: Center(
                            child: Image.network(
                              'https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png',
                              height: height * .04,
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * .05,
                              width: height * .05,
                              decoration: BoxDecoration(
                                  color: Color(0xffffc2be),
                                  borderRadius:
                                      BorderRadius.circular(height * .02)),
                              child: Center(
                                child: Image.network(
                                  'https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png',
                                  height: height * .04,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Michał Kowalski',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Session ends in 9 min 5 s',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: height * .05,
                              width: height * .05,
                              decoration: BoxDecoration(
                                  color: Color(0xff017e00),
                                  borderRadius:
                                      BorderRadius.circular(height * .01)),
                              child: Icon(
                                Icons.power_settings_new,
                                size: height * .05,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                ),
                const Divider(),
                // Menu Items
                Expanded(
                  child: ListView(
                    children: [
                      isCollapsed ? Text('') : Text('    Banking'),
                      buildMenuItem(
                        icon: Icons.dashboard,
                        text: 'Dashboard',
                        isCollapsed: isCollapsed,
                      ),
                      buildMenuItem(
                        icon: Icons.history,
                        text: 'History',
                        isCollapsed: isCollapsed,
                      ),
                      buildMenuItem(
                        icon: Icons.analytics,
                        text: 'Analysis',
                        isCollapsed: isCollapsed,
                      ),
                      buildMenuItem(
                        icon: Icons.monetization_on,
                        text: 'Finances',
                        isCollapsed: isCollapsed,
                      ),
                      const Divider(),
                      isCollapsed ? Text('') : Text('    Services'),
                      buildMenuItem(
                        icon: Icons.mail,
                        text: 'Messages',
                        isCollapsed: isCollapsed,
                        badgeCount: 9,
                      ),
                      buildMenuItem(
                        icon: Icons.folder,
                        text: 'Documents',
                        isCollapsed: isCollapsed,
                      ),
                      buildMenuItem(
                        icon: Icons.grid_view,
                        text: 'Products',
                        isCollapsed: isCollapsed,
                        highlight: true,
                      ),
                      const Divider(),
                      isCollapsed ? Text('') : Text('    Other'),
                      buildMenuItem(
                        icon: Icons.help_outline,
                        text: 'Help',
                        isCollapsed: isCollapsed,
                      ),
                      buildMenuItem(
                        icon: Icons.settings,
                        text: 'Settings',
                        isCollapsed: isCollapsed,
                      ),
                    ],
                  ),
                ),
                // Toggle Button
                IconButton(
                  icon: Icon(isCollapsed
                      ? Icons.arrow_forward_ios
                      : Icons.arrow_back_ios),
                  onPressed: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          // Main Content
          Expanded(
            child: Center(
              child: Text(
                'Main Content Area',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
