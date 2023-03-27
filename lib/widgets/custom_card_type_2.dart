import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageURL;
  final String? title;

  const CustomCardType2({super.key, required this.imageURL, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
           FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if(title!=null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child:  Text(title!),
          )
         
        ],
      ),
    );
  }
}
