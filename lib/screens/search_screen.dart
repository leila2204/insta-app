import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _getSearchBox(),
          ),
          SliverToBoxAdapter(
            child: _getSotryList(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  // color: Colors.red,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ]),
            ),
          )
        ],
      )),
    );
  }

  Widget _getSotryList() {
    return Container(
      height: 55,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return _getStoryListBox();
          }),
    );
  }

  Widget _getSearchContent() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _getSearchBox(),
        ),
        SliverToBoxAdapter(
          child: _getSotryList(),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              // color: Colors.red,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
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
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                QuiltedGridTile(2, 1),
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
              ]),
        )
      ],
    );
  }

  Widget _getSearchBox() {
    return Container(
      margin: EdgeInsets.only(left: 18, right: 18, top: 12),
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Color(0xff272B40),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Image.asset('images/icon_search.png'),
            SizedBox(
              width: 15,
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                hintText: 'Search User',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            )),
            SizedBox(
              width: 15,
            ),
            Image.asset('images/icon_scan.png'),
          ],
        ),
      ),
    );
  }

  Widget _getStoryListBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Container(
              height: 23,
              width: 65,
              child: Text(
                'LeilaAnsari',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'GM', fontSize: 12),
              ),
              // Image.asset('images/profile.png'),
            ),
          ),
        ],
      ),
    );
  }
}


//  GridView.custom(
      
        
//       )