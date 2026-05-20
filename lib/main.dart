import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookUI(),
    );
  }
}

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      /// APP BAR
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.message, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),

      /// BODY
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// TOP BAR
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "What's on your mind?",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            /// STORIES SECTION
            Container(
              height: 220,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                children: [

                  /// STORY 1
                  storyCard(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                    "Your Story",
                  ),

                  /// STORY 2
                  storyCard(
                    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                    "Ali",
                  ),

                  /// STORY 3
                  storyCard(
                    "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
                    "Ahmed",
                  ),

                  /// STORY 4
                  storyCard(
                    "https://images.unsplash.com/photo-1544005313-94ddf0286df2",
                    "Sara",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            /// POSTS
            postCard(
              name: "Ali Khan",
              profile:
              "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
              postImage:
              "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d",
              caption: "Beautiful Nature 🌿",
            ),

            const SizedBox(height: 10),

            postCard(
              name: "Sara Ahmed",
              profile:
              "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
              postImage:
              "https://images.unsplash.com/photo-1524504388940-b1c1722653e1",
              caption: "Enjoying my vacation ❤️",
            ),
          ],
        ),
      ),

      /// BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: "Video",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Groups",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Alerts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
        ],
      ),
    );
  }

  /// STORY CARD
  Widget storyCard(String image, String name) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.1),
              Colors.black.withOpacity(0.7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  /// POST CARD
  Widget postCard({
    required String name,
    required String profile,
    required String postImage,
    required String caption,
  }) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// PROFILE ROW
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profile),
            ),
            title: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("5h ago"),
            trailing: const Icon(Icons.more_horiz),
          ),

          /// CAPTION
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(caption),
          ),

          const SizedBox(height: 10),

          /// POST IMAGE
          Image.network(
            postImage,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 10),

          /// LIKE COMMENT SHARE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined),
                    SizedBox(width: 5),
                    Text("Like"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    SizedBox(width: 5),
                    Text("Comment"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share_outlined),
                    SizedBox(width: 5),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),
        ],
      ),
    );
  }
}