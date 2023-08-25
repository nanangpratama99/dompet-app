import 'package:dompet/constant/constant.dart';
import 'package:dompet/models/transaction_model.dart';
import 'package:dompet/pages/home/widgets/head_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrevieousTransaction extends StatefulWidget {
  const PrevieousTransaction({
    super.key,
  });

  @override
  State<PrevieousTransaction> createState() => _PrevieousTransactionState();
}

class _PrevieousTransactionState extends State<PrevieousTransaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [myBoxShadow],
      ),
      child: Column(
        children: [
          const BuildHeadTitle(
            headTitle: 'Previous Transaction',
            labelTitle: 'lorem ipsum dolor set amet, concentor',
          ),
          _tabSection(),
        ],
      ),
    );
  }

  Widget _tabSection() {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TabBar(
                  padding: const EdgeInsets.all(4),
                  splashBorderRadius:
                      const BorderRadius.all(Radius.circular(10)),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: const Text(
                          "Monthly",
                          style: TextStyle(
                            color:
                                Colors.white, // white if selected, grey if not
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: const Text(
                          "Weekly",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: const Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                  indicator: BoxDecoration(
                    color: Colors.red, // Color for the selected tab
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: transactionItemData.length,
                      itemBuilder: (context, index) {
                        return _listItem(context, index);
                      },
                    ),
                    ListView.builder(
                      itemCount: transactionItemData.length,
                      itemBuilder: (context, index) {
                        return _listItem(context, index);
                      },
                    ),
                    ListView.builder(
                      itemCount: transactionItemData.length,
                      itemBuilder: (context, index) {
                        return _listItem(context, index);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _listItem(context, index) {
    return Container(
      height: 85,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      decoration: BoxDecoration(
        color: color4.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: transactionItemData[index].color.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg/right-arrow.svg",
                      color: transactionItemData[index].color,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(transactionItemData[index].text1),
                      const SizedBox(height: 5),
                      Text(transactionItemData[index].text2),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(transactionItemData[index].date),
              const SizedBox(height: 5),
              Text(transactionItemData[index].time),
            ],
          )
        ],
      ),
    );
  }
}
