import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, isscrooled) {
              return [
                SliverAppBar(
                  // pinned: true,
                  toolbarHeight: 80,
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(top: 18, left: 18),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    )
                  ],
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(10),
                      child: Container(
                        height: 14,
                        decoration: BoxDecoration(
                            color: Color(0xff1C1F2E),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                      )),
                  backgroundColor: Color(0xff1C1F2E),
                  expandedHeight: 170,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(
                    'images/it-tech.jpg',
                    fit: BoxFit.cover,
                  )),
                ),
                SliverToBoxAdapter(
                  child: _getHeaderProfile(),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: TabBarViewDelegate(
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding:
                          EdgeInsets.only(left: 18, right: 18, bottom: 4),
                      labelStyle: TextStyle(fontSize: 16, fontFamily: 'GB'),
                      indicatorWeight: 2,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          icon: Image.asset('images/icon_tab_posts.png'),
                        ),
                        Tab(
                          icon: Image.asset('images/icon_tab_bookmark.png'),
                        ),
                      ],
                    ),
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [
                CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(top: 20, left: 18, right: 18),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Container(
                            // color: Colors.red,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset('images/item$index.png')),
                            ),
                          );
                        }, childCount: 20),
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.mirrored,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(top: 20, left: 18, right: 18),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Container(
                            // color: Colors.red,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset('images/item$index.png')),
                            ),
                          );
                        }, childCount: 20),
                        gridDelegate: SliverQuiltedGridDelegate(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            repeatPattern: QuiltedGridRepeatPattern.mirrored,
                            pattern: [
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(2, 2),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                              QuiltedGridTile(1, 1),
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget _getHeaderProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 66,
              height: 66,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Color(0xffF35383),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(2),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/profile.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 70,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'لیلا انصاری برنامه نویس موبایل',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'SM', fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Junior Flutter Developer',
                      style: TextStyle(
                          color: Color(0xffC5C5C5),
                          fontFamily: 'GB',
                          fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Image.asset('images/icon_profile_edit.png')
          ],
        ),
      ),
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Color(0xff1C1F2E),
      child: _tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
