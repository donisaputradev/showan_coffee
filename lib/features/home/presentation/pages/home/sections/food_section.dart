part of '../page.dart';

class _FoodSection extends StatefulWidget {
  const _FoodSection();

  @override
  State<_FoodSection> createState() => _FoodSectionState();
}

class _FoodSectionState extends State<_FoodSection> {
  final foods = [
    'Signature',
    'Pasta',
    'Fast Food',
    'Rice',
    'Sanger',
    'Choco Sanger'
  ];
  String selectFood = 'Signature';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimens.dp16),
          const HeadingText(
            'Foods',
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
            children: foods
                .map(
                  (e) => InkWell(
                    onTap: () {
                      setState(() {
                        selectFood = e;
                      });
                    },
                    borderRadius: BorderRadius.circular(Dimens.dp100),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondary
                            .withOpacity(selectFood == e ? .9 : .5),
                        borderRadius: BorderRadius.circular(Dimens.dp100),
                      ),
                      child: Center(child: SubTitleText(e)),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: Dimens.dp32),
        ],
      ),
    );
  }
}
