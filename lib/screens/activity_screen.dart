import 'package:flutter/material.dart';
import 'package:insta_appl/model/enums/activity_type_enum.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xff1C1F2E),
              height: 70,
              child: TabBar(
                  labelStyle: TextStyle(fontSize: 16, fontFamily: 'GB'),
                  indicatorWeight: 4,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: 'Following',
                    ),
                    Tab(
                      text: 'You',
                    ),
                  ]),
              //  width: 200,
            ),
            Expanded(
                child: TabBarView(controller: _tabController, children: [
              _getSampleList(),
              _getSampleList(),
            ]))
          ],
        ),
      ),
    );
  }

  Widget _getRow(ActivityStatus status) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0xffF35383),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/profile.png')),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'LeilaAnsari ',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                            fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        'started following',
                        style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'GM',
                            fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'You ',
                        style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'GM',
                            fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        'Now',
                        style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'GM',
                            fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              _getActionActivityRow(status),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0xffF35383),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/profile.png')),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'LeilaAnsari ',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                            fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        'started following',
                        style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'GM',
                            fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'You ',
                        style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'GM',
                            fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        'Now',
                        style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'GM',
                            fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              _getActionActivityRow(status),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getActionActivityRow(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.followBack:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
          onPressed: () {},
          child: Text('Follow'),
        );
      case ActivityStatus.lkies:
        return SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/item1.png'),
            ),
          ),
        );

      case ActivityStatus.following:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
        );
      default:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
                fontFamily: 'GB', fontSize: 12, color: Color(0xffC5C5C5)),
          ),
          style: OutlinedButton.styleFrom(
              side: BorderSide(color: Color(0xffC5C5C5), width: 2)),
        );
    }
  }

  Widget _getSampleList() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'New',
              style: TextStyle(
                  fontFamily: 'GB', fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) => _getRow(ActivityStatus.lkies),
          childCount: 1,
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Today',
              style: TextStyle(
                  fontFamily: 'GB', fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) => _getRow(ActivityStatus.followBack),
          childCount: 1,
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Last Week',
              style: TextStyle(
                  fontFamily: 'GB', fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) => _getRow(ActivityStatus.following),
          childCount: 2,
        ))
      ],
    );
  }
}
