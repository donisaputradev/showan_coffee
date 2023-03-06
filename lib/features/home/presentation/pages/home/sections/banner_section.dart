part of '../page.dart';

class _BannerSection extends StatefulWidget {
  const _BannerSection();

  @override
  State<_BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<_BannerSection> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final banners = [
    MainAssets.banner1Img,
    MainAssets.banner2Img,
    MainAssets.banner1Img,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(Dimens.dp16),
          child: HeadingText(
            'Special For You',
            style: TextStyle(fontSize: 20),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 160,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: banners.map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(Dimens.dp16),
                    child: Image.asset(i),
                  );
                },
              );
            },
          ).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: banners.asMap().entries.map((entry) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin: const EdgeInsets.symmetric(
                horizontal: Dimens.dp4,
                vertical: Dimens.dp8,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.theme.primaryColor
                    .withOpacity(_current == entry.key ? .9 : .4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
