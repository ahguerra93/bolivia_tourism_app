import '../../../../common/models/contact_link_model.dart';
import '../../data/models/destination_model.dart';
import '../../data/models/destination_detail_model.dart';
import '../../../../features/activity/data/models/experience_model.dart';
import '../../../../features/activity/data/models/experience_info_model.dart';

abstract class CityDataSource {
  Future<DestinationModel> getDestination(String destinationId);
  Future<List<ExperienceModel>> getDestinationExperiences(String destinationId);
}

class CityDataSourceImpl implements CityDataSource {
  final Map<String, DestinationModel> _destinationMockData = {
    'dest_1': DestinationModel(
      id: 'dest_1',
      name: 'Salar de Uyuni',
      country: 'Bolivia',
      description: "World's largest salt flat",
      imageUrl: 'https://i.natgeofe.com/n/857a969e-9fe6-4b5e-959f-157ad9fdf7f9/reflection-salar-de-uyuni-bolivia.jpg',
      lat: -19.2869,
      lng: -66.8250,
      destinationDetailModel: DestinationDetailModel(
        description:
            'The Salar de Uyuni is the largest salt flat in the world, spanning 4,086 square miles. Its vastness creates a seamless blend between sky and ground, making it one of the most surreal landscapes on Earth.',
        bookingLinks: [
          ContactLinkModel(
            id: 'link_1',
            name: 'Uyuni Tours',
            type: 'website',
            number: null,
            email: 'info@uyunitours.com',
          ),
          ContactLinkModel(id: 'link_2', name: 'Uyuni Adventure', type: 'phone', number: '+591-2-6924556', email: null),
        ],
      ),
    ),
    'dest_2': DestinationModel(
      id: 'dest_2',
      name: 'La Paz',
      country: 'Bolivia',
      description: 'Capital city of Bolivia',
      imageUrl: 'https://unifranz.edu.bo/wp-content/uploads/2024/07/LPZ1-BLOG.jpg',
      lat: -16.2902,
      lng: -63.5887,
      destinationDetailModel: DestinationDetailModel(
        description:
            'La Paz is the highest capital city in the world at 3,660 meters above sea level. Nestled in a canyon, it offers stunning views and rich indigenous culture.',
        bookingLinks: [],
      ),
    ),
    'dest_3': DestinationModel(
      id: 'dest_3',
      name: 'Santa Cruz',
      country: 'Bolivia',
      description: 'Gateway to the Amazon',
      imageUrl: 'https://www.gmsantacruz.gob.bo/images/misio_vision.jpg',
      lat: -17.7838,
      lng: -63.1821,
      destinationDetailModel: DestinationDetailModel(
        description:
            'Santa Cruz is the largest city in Bolivia and the gateway to the Amazon rainforest. It offers a blend of modern amenities and natural beauty.',
        bookingLinks: [],
      ),
    ),
  };

  final Map<String, List<ExperienceModel>> _experienceMockData = {
    'dest_1': [
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
    ],
    'dest_2': [],
    'dest_3': [],
  };

  @override
  Future<DestinationModel> getDestination(String destinationId) async {
    await Future.delayed(const Duration(seconds: 1));

    final destination = _destinationMockData[destinationId];
    if (destination != null) {
      return destination;
    }
    throw Exception('Destination not found');
  }

  @override
  Future<List<ExperienceModel>> getDestinationExperiences(String destinationId) async {
    await Future.delayed(const Duration(seconds: 1));

    final experiences = _experienceMockData[destinationId];
    if (experiences != null) {
      return experiences;
    }
    throw Exception('Experiences for destination not found');
  }
}
