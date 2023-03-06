part of '../page.dart';

class _DrinkSection extends StatefulWidget {
  const _DrinkSection();

  @override
  State<_DrinkSection> createState() => _DrinkSectionState();
}

class _DrinkSectionState extends State<_DrinkSection> {
  final drinks = [
    'Signature',
    'Manual Brew',
    'Non Coffee',
    'Coffee Based',
    'Sanger',
    'Choco Sanger'
  ];
  String selectDrink = 'Signature';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimens.dp16),
          const HeadingText(
            'Drinks',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: Dimens.dp16),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 4 / 1,
            crossAxisSpacing: Dimens.dp16,
            mainAxisSpacing: Dimens.dp16,
            children: drinks
                .map(
                  (e) => InkWell(
                    onTap: () {
                      setState(() {
                        selectDrink = e;
                      });
                    },
                    borderRadius: BorderRadius.circular(Dimens.dp100),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondary
                            .withOpacity(selectDrink == e ? .9 : .5),
                        borderRadius: BorderRadius.circular(Dimens.dp100),
                      ),
                      child: Center(child: SubTitleText(e)),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
