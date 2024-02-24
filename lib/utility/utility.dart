import 'package:flutter/material.dart';

class UtilityClass {
  static const List<String> imgUrls = [
    'https://www.gqmiddleeast.com/2021/06/2.-Habtoor-Palace---Exterior.jpg',
    'https://www.leisureopportunities.co.uk/images/HIGH17062_663259.jpg',
    'https://th.bing.com/th/id/R.bdd1bde873ca4f512d6011ca428a64af?rik=ktGfRqnxukHghg&riu=http%3a%2f%2f3.bp.blogspot.com%2f_slbIIG2LtQQ%2fTH0le4I05VI%2fAAAAAAAAAHg%2fC5uHqBkDG9M%2fs1600%2fverde_vertical.jpg&ehk=28D%2bHhYImXWcJ2XM8cKqxBwUvHwS%2bCNdcECSxr9fKuw%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.WxVQG_v1YKeMJzmMQ9MCmQHaJ_?w=800&h=1080&rs=1&pid=ImgDetMain',
    'https://veekas.studio/wp-content/uploads/2020/10/gift-commercial-ahmedabad-3.jpg',
    'https://th.bing.com/th/id/OIP.D4dznvO4PSQyDPFMTmkoOAHaFd?rs=1&pid=ImgDetMain'
  ];
  static final List<String> states = [
    'ANDAMAN AND NICOBAR ISLANDS',
    'ANDHRA PRADESH',
    'ARUNACHAL PRADESH',
    'ASSAM',
    'BIHAR',
    'CHATTISGARH',
    'CHANDIGARH',
    'DAMAN AND DIU',
    'DELHI',
    'DADRA AND NAGAR HAVELI',
    'GOA',
    'GUJARAT',
    'HIMACHAL PRADESH',
    'HARYANA',
    'JAMMU AND KASHMIR',
    'JHARKHAND',
    'KERALA',
    'KARNATAKA',
    'LAKSHADWEEP',
    'MEGHALAYA',
    'MAHARASHTRA',
    'MANIPUR',
    'MADHYA PRADESH',
    'MIZORAM',
    'NAGALAND',
    'ORISSA',
    'PUNJAB',
    'PONDICHERRY',
    'RAJASTHAN',
    'SIKKIM',
    'TAMIL NADU',
    'TRIPURA',
    'UTTARAKHAND',
    'UTTAR PRADESH',
    'WEST BENGAL',
    'TELANGANA',
    'LADAKH'
  ];

  static List<String> getSuggestions(String query) {
    List<String> matches = [];
    matches.addAll(states);
    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
