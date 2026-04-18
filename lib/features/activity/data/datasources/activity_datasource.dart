import '../../../../common/models/contact_link_model.dart';
import '../../data/models/experience_model.dart';
import '../../data/models/experience_info_model.dart';

abstract class ActivityDataSource {
  Future<ExperienceModel> getExperience(String experienceId);
}

class ActivityDataSourceImpl implements ActivityDataSource {
  final Map<String, ExperienceModel> _experienceMockData = {
    'exp_1': ExperienceModel(
      id: 'exp_1',
      name: 'Uyuni Salt Flats',
      type: ExperienceType.attraction,
      lat: -19.2869,
      lng: -66.8250,
      description: "World's largest salt flat - A natural wonder spanning 4,086 square miles.",
      imageUrl:
          'https://cdn.getyourguide.com/image/format=auto,fit=crop,gravity=auto,quality=60,height=650,dpr=1/tour_img/4244c5dce31a58345390a8aaea197a4b941ed9e4cb98ee853637615457449284.jpg',
      experienceInfoModel: ExperienceInfoModel(
        bestSeason: 'June to October (dry season)',
        altitude: '3,656 m',
        currency: 'BOB (Bolivianos)',
        languages: ['Spanish', 'Quechua', 'Aymara', 'English'],
        transportInstructions:
            'Take a 4x4 jeep tour from Uyuni town. Tours typically start at 4:30 AM to catch sunrise.',
        reminders:
            'Bring sunscreen and sunglasses. Altitude can be challenging for some visitors. Not recommended for people with heart conditions.',
        tips: [
          'Stay hydrated throughout the day',
          'Take breaks during the drive',
          'Bring warm clothes for evening',
          'Use bathroom before leaving town',
        ],
        bookingLinks: [
          ContactLinkModel(
            id: 'link_1',
            name: 'Uyuni Tours',
            type: 'website',
            number: null,
            email: 'booking@uyunitours.com',
          ),
          ContactLinkModel(id: 'link_2', name: 'Uyuni Adventure', type: 'phone', number: '+591-2-6924556', email: null),
        ],
      ),
    ),
    'exp_2': ExperienceModel(
      id: 'exp_2',
      name: 'Salt Sculpture Museum',
      type: ExperienceType.attraction,
      lat: -19.2900,
      lng: -66.8200,
      description: 'Unique museum built entirely from salt blocks',
      imageUrl: 'https://one-million-places.com/wp-content/uploads/2015/bolivien/uyuni-eisenbahnfriedhof-13.jpg',
      experienceInfoModel: ExperienceInfoModel(
        bestSeason: 'Year-round',
        altitude: '3,656 m',
        currency: 'BOB (Bolivianos)',
        languages: ['Spanish', 'English'],
        transportInstructions:
            'Located in Uyuni town, walkable from town center. About 15 minutes walk from the main plaza.',
        reminders: 'Bring camera for stunning photos. Be careful with camera equipment due to salt dust.',
        tips: [
          'Visit early morning for better light',
          'Hire a local guide for interesting stories',
          'Learn about traditional salt extraction methods',
        ],
        bookingLinks: [],
      ),
    ),
    'exp_3': ExperienceModel(
      id: 'exp_3',
      name: 'Valle de Rocas',
      type: ExperienceType.attraction,
      lat: -19.1500,
      lng: -66.5000,
      description: 'Otherworldly rock formations creating surreal landscapes',
      imageUrl: 'https://www.dejarlotodoparaviajar.com/wp-content/uploads/2018/04/Desierto-Uyuni.jpg',
      experienceInfoModel: ExperienceInfoModel(
        bestSeason: 'May to October',
        altitude: '3,800 m',
        currency: 'BOB (Bolivianos)',
        languages: ['Spanish'],
        transportInstructions:
            '4x4 required for this remote location. 2-hour drive from Uyuni. Only accessible with organized tours.',
        reminders:
            'Very remote location with no services nearby. Bring all supplies from Uyuni. No cell phone coverage.',
        tips: [
          'Start early in the morning',
          'Bring plenty of water and snacks',
          'Take a knowledgeable guide',
          'Wear comfortable hiking boots',
        ],
        bookingLinks: [],
      ),
    ),
  };

  @override
  Future<ExperienceModel> getExperience(String experienceId) async {
    await Future.delayed(const Duration(seconds: 1));

    final experience = _experienceMockData[experienceId];
    if (experience != null) {
      return experience;
    }
    throw Exception('Experience not found');
  }
}
