import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
body: SafeArea(
child: SingleChildScrollView(
child: Column(
children: [
// Header
Padding(
padding: const EdgeInsets.symmetric(
horizontal: 11,
vertical: 18,
),
child: Row(
children: [
const Text(
'Facebook',
style: TextStyle(
color: Color(0xff1877F2),
fontSize: 30,
fontWeight: FontWeight.bold,
),
),

const Spacer(),

Padding(
padding: const EdgeInsets.only(right: 6),
child: Image.asset(
'assets/images/Plus.png',
width: 26,
height: 26,
),
),

Padding(
padding: const EdgeInsets.all(6),
child: Image.asset(
'assets/images/Search.png',
width: 22,
height: 22,
),
),

Padding(
padding: const EdgeInsets.all(6),
child: Image.asset(
'assets/images/Messenger.png',
width: 22,
height: 22,
),
),
],
),
),

// Navigation Bar
SizedBox(
height: 42,
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
navigationIcon(Icons.home, true),
navigationIcon(Icons.ondemand_video, false),
navigationIcon(Icons.storefront, false),
navigationIcon(Icons.account_circle_outlined, false),
navigationIcon(Icons.notifications_none, false),

const CircleAvatar(
radius: 12,
backgroundImage: AssetImage(
'assets/images/Ellipse 2.png',
),
),
],
),
),

const Divider(height: 1),

// Create Post
Padding(
padding: const EdgeInsets.symmetric(
horizontal: 12,
vertical: 10,
),
child: Row(
children: [
const CircleAvatar(
radius: 25,
backgroundImage: AssetImage(
'assets/images/Ellipse 2.png',
),
),

const SizedBox(width: 10),

const Expanded(
child: Text(
"What's in Your Mind?",
style: TextStyle(
color: Color(0xff737B8C),
fontSize: 13,
),
),
),

const Icon(
Icons.photo_library_outlined,
color: Colors.green,
size: 23,
),
],
),
),

const Divider(height: 1),

// Stories
SizedBox(
height: 151,
child: ListView(
scrollDirection: Axis.horizontal,
padding: const EdgeInsets.symmetric(
horizontal: 8,
vertical: 10,
),
children: [
createStory(),

storyCard(
'Ahmed',
'assets/images/Group 7.png',
),

storyCard(
'Mohamed',
'assets/images/Group 19.png',
),

storyCard(
'Ali',
'assets/images/Group 20.png',
),

storyCard(
'Al Alamy',
'assets/images/CR71.jpeg',
),

storyCard(
'Yasser',
'assets/images/CR72.jpeg',
),
],
),
),

const Divider(height: 16),

// Posts
postWidget(),

const SizedBox(height: 8),

postWidget(),

const SizedBox(height: 8),

postWidget(),
],
),
),
),
);
}

// Navigation Icon
Widget navigationIcon(IconData icon, bool isSelected) {
return Icon(
icon,
size: 22,
color: isSelected
? const Color(0xff1877F2)
    : const Color(0xff9299A8),
);
}

// Create Story
Widget createStory() {
return Container(
width: 82,
margin: const EdgeInsets.only(right: 8),
child: Column(
children: [
Stack(
alignment: Alignment.bottomCenter,
children: [
ClipRRect(
borderRadius: BorderRadius.circular(12),
child: Image.asset(
'assets/images/Ellipse 2.png',
width: 82,
height: 91,
fit: BoxFit.cover,
),
),

Container(
width: 20,
height: 20,
decoration: const BoxDecoration(
color: Color(0xff1877F2),
shape: BoxShape.circle,
),
child: const Icon(
Icons.add,
color: Colors.white,
size: 17,
),
),
],
),

const SizedBox(height: 8),

const Text(
'Create a Story',
textAlign: TextAlign.center,
style: TextStyle(
fontSize: 11,
fontWeight: FontWeight.bold,
),
),
],
),
);
}

// Story Card
Widget storyCard(String name, String image) {
return Container(
width: 82,
margin: const EdgeInsets.only(right: 8),
child: Column(
children: [
ClipRRect(
borderRadius: BorderRadius.circular(12),
child: Image.asset(
image,
width: 82,
height: 126,
fit: BoxFit.cover,
),
),
],
),
);
}

// Post Widget
Widget postWidget() {
return Container(
color: Colors.white,
padding: const EdgeInsets.only(
left: 12,
right: 12,
top: 10,
),
child: Column(
children: [
// Post Header
Row(
children: [
const CircleAvatar(
radius: 20,
backgroundColor: Color(0xff07518A),
backgroundImage: AssetImage(
'assets/images/Ellipse 6.png',
),
),

const SizedBox(width: 8),

const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Route',
style: TextStyle(
fontSize: 13,
fontWeight: FontWeight.w500,
),
),

SizedBox(height: 3),

Text(
'8h  · 🌐',
style: TextStyle(
color: Colors.grey,
fontSize: 10,
),
),
],
),

const Spacer(),

const Icon(
Icons.more_horiz,
size: 22,
),
],
),

const SizedBox(height: 10),

// Post Image
Image.asset(
'assets/images/route.png',
width: double.infinity,
height: 230,
fit: BoxFit.contain,
),

const SizedBox(height: 10),

// Post Actions
Row(
children: [
const Icon(
Icons.favorite_border,
size: 16,
),

const SizedBox(width: 10),

const Icon(
Icons.chat_bubble_outline,
size: 16,
),

const SizedBox(width: 10),

const Icon(
Icons.send_outlined,
size: 16,
),

const Spacer(),

const Icon(
Icons.bookmark_border,
size: 20,
),
],
),

const SizedBox(height: 10),
],
),
);
}
}
