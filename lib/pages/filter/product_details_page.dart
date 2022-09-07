import 'package:complex_ui/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset(
            'assets/icons/ant-design_star-filled.svg',
            width: 25,
            height: 25,
            color: AppColors.yellow,
          ),
          SvgPicture.asset(
            'assets/icons/ant-design_star-filled.svg',
            width: 25,
            height: 25,
            color: AppColors.yellow,
          ),
          SvgPicture.asset(
            'assets/icons/ant-design_star-filled.svg',
            width: 25,
            height: 25,
            color: AppColors.yellow,
          ),
          SvgPicture.asset(
            'assets/icons/ant-design_star-filled.svg',
            width: 25,
            height: 25,
            color: AppColors.yellow,
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            children: [
              Text(
                'Detrás de los sombreros de paja toquilla',
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/banner_utpl.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: Theme
                    .of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/persson2.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Rocio Mercahan',
                            style:
                            Theme
                                .of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Artesana',
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: SvgPicture.asset(
                            'assets/icons/bxs_message.svg',

                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '50',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: SvgPicture.asset(
                            'assets/icons/favorito.svg',

                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          '1.5 k',
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

const String text =
'''Muchas leyendas giran en torno al origen del sombrero de paja toquilla, lo que ha impedido tener con precisión un referente histórico concreto sobre la época y año en que apareció esta manufactura en Ecuador, aunque algunos historiadores señalan que se remonta al Período Formativo (3.500 a.C–500 A.C), representado principalmente por las Culturas Valdivia y Chorrera. Pero lo que si está claro y desde siempre, es que esta hermosa prenda es ciento por ciento ecuatoriana, elaborada artesanalmente por hábiles manos de mujeres y hombres de Montecristi, Jipijapa, en Manabí (Costa);y, Cuenca en el Austro ecuatoriano.

El libro “Tejiendo la Vida”, de María Leonor Aguilar, recuerda que “históricamente los Huancavilcas, Mantas y Caras, aborígenes que moraban en el territorio de las provincias que hoy corresponde a las provincias de Guayas y Manabí han sido considerados como habilísimos tejedores y trabajadores del arte textil”; y afirma que seguramente de ellos heredaron, las cualidades que hasta hoy mantienen los hábiles artesanos de estas poblaciones y que posteriormente su enseñanza se extendió hasta Cuenca- Azuay (1835) y en 1845 a Azogues, provincia del Cañar, para superar la estrechez económica que afectó a sus pobladores. En 1849 los sombreros de Montecristi, Jipijapa y Cuenca se vendían ya en el exterior (Panamá).

En 1855 se inaugura en París una exposición mundial preparada por el francés Philippe Raimondi, a la asiste Panamá con una colección de sombreros de paja toquilla, elaborados en tierras manabitas (Ecuador). Esta colección impresionó favorablemente al habitante europeo por la finura del tejido. Obsequiaron un sombrero fino a Napoleón III, emperador de Francia, este se paseó por la feria y presumió de su elegancia; el hecho causó la inquietud de otras personas que preguntaros cómo adquirirlo. Al haber obtenido éxito en la exposición, se continuó con el negocio. Pero en el catálogo de la exposición no aparece el nombre del Ecuador como país expositor y es en el espacio reservado a “Comarcas diversas” donde se explica el puerto de procedencia de donde se embarca con el nombre del expositor y su lugar de residencia, en dicho catálogo se habla de un sombrero con “tejido de paja”.

''';
