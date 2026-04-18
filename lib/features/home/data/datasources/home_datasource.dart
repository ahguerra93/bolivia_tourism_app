import '../../../../common/models/contact_link_model.dart';
import '../models/home_model.dart';
import '../../../../features/city/data/models/destination_detail_model.dart';
import '../../../../features/city/data/models/destination_model.dart';
import '../../../../features/activity/data/models/experience_model.dart';
import '../../../../features/activity/data/models/experience_info_model.dart';

abstract class HomeDataSource {
  Future<HomeModel> getHomeData();
}

class HomeDataSourceImpl implements HomeDataSource {
  @override
  Future<HomeModel> getHomeData() async {
    await Future.delayed(const Duration(seconds: 1));

    final destinations = [
      DestinationModel(
        id: 'dest_1',
        name: 'Salar de Uyuni',
        country: 'Bolivia',
        description: "World's largest salt flat",
        imageUrl: 'https://i.natgeofe.com/n/857a969e-9fe6-4b5e-959f-157ad9fdf7f9/reflection-salar-de-uyuni-bolivia.jpg',
        lat: -19.2869,
        lng: -66.8250,
        destinationDetailModel: DestinationDetailModel(
          description: 'The Salar de Uyuni is the largest salt flat in the world, spanning 4,086 square miles.',
          bookingLinks: [
            ContactLinkModel(
              id: 'link_1',
              name: 'Uyuni Tours',
              type: 'website',
              number: null,
              email: 'info@uyunitours.com',
            ),
          ],
        ),
      ),
      DestinationModel(
        id: 'dest_2',
        name: 'La Paz',
        country: 'Bolivia',
        description: 'Capital city of Bolivia',
        imageUrl: 'https://unifranz.edu.bo/wp-content/uploads/2024/07/LPZ1-BLOG.jpg',
        lat: -16.2902,
        lng: -63.5887,
        destinationDetailModel: DestinationDetailModel(
          description: 'La Paz is the highest capital city in the world at 3,660 meters above sea level.',
          bookingLinks: [
            ContactLinkModel(id: 'link_2', name: 'La Paz Hotels', type: 'phone', number: '+591-2-2814444', email: null),
          ],
        ),
      ),
      DestinationModel(
        id: 'dest_3',
        name: 'Santa Cruz',
        country: 'Bolivia',
        description: 'Gateway to the Amazon',
        imageUrl: 'https://www.gmsantacruz.gob.bo/images/misio_vision.jpg',
        lat: -17.7838,
        lng: -63.1821,
        destinationDetailModel: DestinationDetailModel(
          description: 'Santa Cruz is the largest city in Bolivia and gateway to the Amazon rainforest.',
          bookingLinks: [],
        ),
      ),
      DestinationModel(
        id: 'dest_4',
        name: 'Tarija',
        country: 'Bolivia',
        description: 'Wine region of Bolivia',
        imageUrl: 'https://www.tarija.bo/wp-content/uploads/2022/04/174039554_300450131643689_465954943515680031_n.jpg',
        lat: -21.4253,
        lng: -65.3981,
        destinationDetailModel: DestinationDetailModel(
          description: 'Tarija is known for its wine production and pleasant climate.',
          bookingLinks: [],
        ),
      ),
      DestinationModel(
        id: 'dest_5',
        name: 'Oruro',
        country: 'Bolivia',
        description: 'Mining city and cultural hub',
        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/7/7b/Oruro..jpg',
        lat: -17.9808,
        lng: -67.1337,
        destinationDetailModel: DestinationDetailModel(
          description: 'Oruro is famous for its mining heritage and annual carnival celebrations.',
          bookingLinks: [],
        ),
      ),
      DestinationModel(
        id: 'dest_6',
        name: 'Cochabamba',
        country: 'Bolivia',
        description: 'City of eternal spring',
        imageUrl:
            'https://scontent.fsrz1-1.fna.fbcdn.net/v/t39.30808-6/502754156_3161564324019543_754426575793381587_n.jpg',
        lat: -17.3895,
        lng: -66.1568,
        destinationDetailModel: DestinationDetailModel(
          description: 'Cochabamba is known for its pleasant weather and vibrant culture.',
          bookingLinks: [],
        ),
      ),
    ];

    final experiences = [
      ExperienceModel(
        id: 'exp_1',
        name: 'Uyuni Salt Flats',
        type: ExperienceType.attraction,
        lat: -19.2869,
        lng: -66.8250,
        description: "World's largest salt flat",
        imageUrl:
            'https://cdn.getyourguide.com/image/format=auto,fit=crop,gravity=auto,quality=60,height=650,dpr=1/tour_img/4244c5dce31a58345390a8aaea197a4b941ed9e4cb98ee853637615457449284.jpg',
        experienceInfoModel: ExperienceInfoModel(
          bestSeason: 'June to October (dry season)',
          altitude: '3,656 m',
          currency: 'BOB (Bolivianos)',
          languages: ['Spanish', 'Quechua', 'Aymara'],
          transportInstructions: 'Take a 4x4 jeep tour from Uyuni town',
          reminders: 'Bring sunscreen and sunglasses. Altitude can be challenging.',
          tips: ['Stay hydrated', 'Take breaks', 'Bring warm clothes'],
          bookingLinks: [
            ContactLinkModel(
              id: 'link_3',
              name: 'Uyuni Tours',
              type: 'website',
              number: null,
              email: 'booking@uyunitours.com',
            ),
          ],
        ),
      ),
      ExperienceModel(
        id: 'exp_2',
        name: 'Salt Sculpture Museum',
        type: ExperienceType.attraction,
        lat: -19.2900,
        lng: -66.8200,
        description: 'Museum built from salt',
        imageUrl: 'https://one-million-places.com/wp-content/uploads/2015/bolivien/uyuni-eisenbahnfriedhof-13.jpg',
        experienceInfoModel: ExperienceInfoModel(
          bestSeason: 'Year-round',
          altitude: '3,656 m',
          currency: 'BOB (Bolivianos)',
          languages: ['Spanish', 'English'],
          transportInstructions: 'Located in Uyuni town, walkable from town center',
          reminders: 'Bring camera for stunning photos',
          tips: ['Visit early morning', 'Hire a guide', 'Learn about salt extraction'],
          bookingLinks: [],
        ),
      ),
      ExperienceModel(
        id: 'exp_3',
        name: 'Valle de Rocas',
        type: ExperienceType.attraction,
        lat: -19.1500,
        lng: -66.5000,
        description: 'Otherworldly rock formations',
        imageUrl: 'https://www.dejarlotodoparaviajar.com/wp-content/uploads/2018/04/Desierto-Uyuni.jpg',
        experienceInfoModel: ExperienceInfoModel(
          bestSeason: 'May to October',
          altitude: '3,800 m',
          currency: 'BOB (Bolivianos)',
          languages: ['Spanish'],
          transportInstructions: '4x4 required, 2-hour drive from Uyuni',
          reminders: 'Very remote location, no services nearby',
          tips: ['Start early', 'Bring water and snacks', 'Take a guide'],
          bookingLinks: [],
        ),
      ),
    ];

    return HomeModel(destinations: destinations, experiences: experiences);
  }
}
