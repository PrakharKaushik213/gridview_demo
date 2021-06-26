import 'package:flutter/material.dart';
import '../models/Temple.dart';

class TempleGrid with ChangeNotifier {
  List<Temple> _templelist = [
    Temple(
        id: '1',
        name: 'Badrinath Temple',
        location: 'Uttarakhand',
        information:
            'Situated close to the Alaknanda River, the abode of Lord Badrinath is located in the Chamoli district of Uttarakhand. This holy shrine of Lord Vishnu is one of the Char Dhams of Hindu religion.It is also one of the four Chota Char Dham pilgrimage sites (comparatively minor pilgrimage sites). The temple is one of the 108 temples dedicated to Lord Vishnu (Divya Desams), which finds its mention in the works of Tamil saints who existed in the 6th to 9th century.The ancient abode of Lord Vishnu can be visited only between the months of April and November because the temple remains closed during the other months due to harsh weather conditions. Two of the most famous festivals related to the temple are –Mata Murti-Ka-Mela – A celebration where Lord Badrinath’s mother is worshipped in the month of September.Badri-Kedar Festival – A celebration in the month of June for 8 days in the temples of Badrinath and Kedarnath. It seeks to educate people on the local traditions of Uttarakhand.',
        imageUrl:
            'https://cdn-cdmoj.nitrocdn.com/aMXvDVbOTxUQVHZUrOLYcprbySihZhas/assets/static/source/blog/wp-content/uploads/2021/03/4a2697e58e178bc05bc324aa8a378b24.Badrinath-Temple-1.jpg'),
    Temple(
        id: '2',
        name: 'Sun Temple',
        location: 'Odisha',
        information:
            'The Sun temple is situated in the small town of Konark situated in the Puri district of Odisha. This marvel of architecture is dedicated to Indian God of Sun, Surya. The temple has been built in the shape of his chariot which is drawn by seven horses.The temple was built in the 13th century by a king called Narasimhadeva. There is an ancient legend attached to this temple, once Lord Krishna cursed one of his own sons with leprosy. To seek penance, his son, Samba worshiped Surya for twelve years.Pleased with his devotion, Surya healed him. Samba made the Sun temple in return to express his gratitude. The mesmerizing beauty of the place was best summed up by Rabindranath Tagore: ‘Here the language of stone surpasses the language of man.’',
        imageUrl:
            'https://cdn-cdmoj.nitrocdn.com/aMXvDVbOTxUQVHZUrOLYcprbySihZhas/assets/static/optimized/blog/wp-content/uploads/2021/01/b24510c7994b8c523df56bbb7220a869.Sun-Temple-Konark-Odisha.jpg'),
    Temple(
        id: '3',
        name: 'Brihadeeswara Temple',
        location: 'Tamil Nadu',
        information:
            'Brihadeeswara Temple is one of the largest South-Indian temples situated in Thanjavur, Tamil Nadu. Also known as Peruvudaiyar Kovil and RajaRajeswaram, this 11th century temple was built by the Chola emperor Raja Raja Chola I. Cholas are known for their admiration for art.The opulence and artistic proficiency of Cholas is well reflected in the grand and magnificent architecture of the temple. Made entirely of granite stone, it was built as per the principles of Vaastu Shastra.The most remarkable thing about this UNESCO World Heritage Site is that it doesn’t leave any shadow on the ground at noon. Dedicated to Lord Shiva, the temple speaks of the importance of religious beliefs in Hinduism.',
        imageUrl:
            'https://cdn-cdmoj.nitrocdn.com/aMXvDVbOTxUQVHZUrOLYcprbySihZhas/assets/static/source/blog/wp-content/uploads/2021/03/3b3ba0aa92b9e8b9812e25217751e779.Brihadeeswara-Temple.jpg'),
    Temple(
        name: 'Sanchi Stupa',
        location: 'Madhya Pradesh',
        information:
            'Surrounded by the ruins of smaller stupas and monasteries, Sanchi Stupa is an architectural marvel in Sanchi, believed to house the relics of Lord Buddha. Also known as the Great Stupa, this famous pilgrimage site in India was built by the Indian Emperor Ashoka, the Great in the 3rd century BC.As the oldest stone sculpture of the country, this UNESCO World Heritage Site takes you back in the days of the prosperous Mauryan Era. There are four intricately designed gateways surrounding the Stupa known as toranas, each individually symbolizing the four emotions of love, peace, courage and trust.',
        imageUrl:
            'https://cdn-cdmoj.nitrocdn.com/aMXvDVbOTxUQVHZUrOLYcprbySihZhas/assets/static/source/blog/wp-content/uploads/2021/03/fcd13349e7e095fe450cabd38ee44eaf.Sanchi-Stupa.jpg',
        id: '4'),
    Temple(
        name: 'Ramanathaswamy Temple',
        location: 'Tamil Nadu',
        information:
            'Rameswaram is a small island town in Tamil Nadu known for being one of the pious Char Dhams of the Hindus. As per the legend, Lord Rama with his wife Sita landed on the shore of this island after defeating the demon king, Ravana who was a brahmin.To seek atonement for killing a brahmin, Lord Rama wanted to pray to Lord Shiva. He asked Hanuman to fly to Kailash and bring a Shivalinga. In the meantime, Goddess Sita made a small lingam. The one made by Goddess Sita is called Ramalingam and one brought by Lord Hanuman is called Vishwalingam.As per the instructions of Lord Rama, Vishwalingam has to be worshipped before the Ramalingam which is followed even today.',
        imageUrl:
            'https://cdn-cdmoj.nitrocdn.com/aMXvDVbOTxUQVHZUrOLYcprbySihZhas/assets/static/source/blog/wp-content/uploads/2021/03/55b80b8f370cf527265877c0319fa1d6.Rameshwaram-Temple.jpg',
        id: '5'),
  ];

  List<Temple> get templeList {
    return [..._templelist];
  }

  List<Temple> get UnvisitedList {
    return [
      ..._templelist.where((element) => element.visited == false).toList()
    ];
  }

  List<Temple> get VistedTempleList {
    return [
      ..._templelist.where((element) => element.visited == true).toList()
    ];
  }
}
