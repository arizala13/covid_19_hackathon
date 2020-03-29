import 'package:covid_19_hackathon/Posts/post_card.dart';
import 'package:covid_19_hackathon/Upload/upload.dart';
import 'package:flutter/material.dart';

var postImages = {
  0: "https://avatars3.githubusercontent.com/u/37874101?s=60&v=4",
  1: "https://avatars3.githubusercontent.com/u/37874101?s=60&v=4",
  2: "https://avatars3.githubusercontent.com/u/37874101?s=60&v=4",
  3: "https://avatars3.githubusercontent.com/u/37874101?s=60&v=4",
  4: "https://avatars3.githubusercontent.com/u/37874101?s=60&v=4",
};
var postNames = {
  0: "Louis Agassiz",
  1: "Maria Gaetana Agnesi",
  2: "Al-Battani",
  3: "Abu Nasr Al-Farabi",
  4: "Alhazen"
};
var postTitles = {
  0: "Morality in the Time of COVID-19.",
  1: "Debate: How can we change antimicrobial use to prevent the rise of superbugs?",
  2: "Death of a child ‘a public health threat’ for mothers",
  3: "Porous borders place Africa at risk from coronavirus",
  4: "Hundreds dead as Yemen flu outbreak spreads"
};
var postContents = {
  0: "I’m wondering if anyone else is wrestling with the morality of this situation. I firmly believe that, as a society, we should all be on the same page about focusing first and foremost on ending this crisis.",
  1: "Claire Heffernan researches the behavioural drivers to resilience, and adaption to the rise in antimicrobial resistance across the global South. As the former Head of Infection and Immunity at the University of Bristol, Heffernan initiated the Risk and Resilience Hub, which explores four interlinked critical global challenges: climate change and health, antimicrobial resistance, sustainable food systems and disease emergence.",
  2: "Grief over the loss of a child poses a threat to public health in Sub-Saharan Africa, as nearly two-thirds of mothers in some countries suffer the death of at least one child, a study has found.",
  3: "Fears were growing over Africa’s ability to protect its citizens from the rapidly spreading coronavirus epidemic as the World Health Organization (WHO) declared the outbreak a public health emergency of international concern.",
  4: "The Houthi-affiliated health ministry is introducing measures to combat the spread of the H1N1 flu strain across several governorates, only months after declaring an emergency state over outbreaks of dengue and malaria."
};
var postTimes = {
  0: "10 mins ago · ",
  1: "20 mins ago · ",
  2: "1 hour ago · ",
  3: "1 hour ago · ",
  4: "2 hours ago · "
};
var postvotes = {
  0: " 56 votes",
  1: " 16 votes",
  2: " 6 votes",
  3: " 16 votes",
  4: " 46 votes"
};
var postResponses = {0: "120", 1: "24", 2: "16", 3: "34", 4: "46"};
var postViews = {0: "1k", 1: "920", 2: "568", 3: "245", 4: "120"};
var topicImage = {
  0: "assets/images/covid.jpg",
  1: "assets/images/debate.jpg",
  2: "assets/images/deathofachild.jpg",
  3: "assets/images/borders.jpg",
  4: "assets/images/yemen.jpg"
};

class HealthCareScreen extends StatefulWidget {
  HealthCareScreen({Key key}) : super(key: key);
  @override
  _HealthCareScreenState createState() => _HealthCareScreenState();
}

class _HealthCareScreenState extends State<HealthCareScreen> {
  TextEditingController editingController = TextEditingController();
  final getPostItems =
      List<String>.generate(20, (i) => "Community Health care connected $i");
  var postItems = List<String>();

  @override
  void initState() {
    postItems.addAll(getPostItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> searchList = List<String>();
    //search posts by title
    searchList.addAll(postItems);
    if (query.isNotEmpty) {
      List<String> searchListData = List<String>();
      searchList.forEach((item) {
        if (item.contains(query)) {
          searchListData.add(item);
        }
      });
      setState(() {
        postItems.clear();
        postItems.addAll(searchListData);
      });
      return;
    } else {
      setState(() {
        postItems.clear();
        postItems.addAll(getPostItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          border: const Border(
            top: const BorderSide(width: 0.0),
            left: const BorderSide(width: 0.0),
            right: const BorderSide(width: 0.0),
            bottom: const BorderSide(width: 1.0, color: Colors.white),
          ),
        ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                //search topics
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: InputDecoration(
                  labelText: "search",
                  hintText: "keywords, topics, health",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)))),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                // Card(
                //   child: TrendingStories(),
                // ),
                PostCard(
                    image: postImages[0],
                    titles: postTitles[0],
                    content: postContents[0],
                    name: postNames[0],
                    votes: postvotes[0],
                    responses: postResponses[0],
                    views: postViews[0],
                    time: postTimes[0],
                    postImage: topicImage[0]),
                PostCard(
                    image: postImages[1],
                    titles: postTitles[1],
                    content: postContents[1],
                    name: postNames[1],
                    votes: postvotes[1],
                    responses: postResponses[1],
                    views: postViews[1],
                    time: postTimes[1],
                    postImage: topicImage[1]),
                PostCard(
                    image: postImages[2],
                    titles: postTitles[2],
                    content: postContents[2],
                    name: postNames[2],
                    votes: postvotes[2],
                    responses: postResponses[2],
                    views: postViews[2],
                    time: postTimes[2],
                    postImage: topicImage[2]),
                PostCard(
                    image: postImages[3],
                    titles: postTitles[3],
                    content: postContents[3],
                    name: postNames[3],
                    votes: postvotes[3],
                    responses: postResponses[3],
                    views: postViews[3],
                    time: postTimes[3],
                    postImage: topicImage[3]),
                PostCard(
                    image: postImages[4],
                    titles: postTitles[4],
                    content: postContents[4],
                    name: postNames[4],
                    votes: postvotes[4],
                    responses: postResponses[4],
                    views: postViews[4],
                    time: postTimes[4],
                    postImage: topicImage[4]),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton.extended(
          elevation: 6.0,
          icon: const Icon(Icons.add),
          label: const Text('Add Topic'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Upload()),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // IconButton(
            //   icon: Icon(Icons.whatshot),
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
