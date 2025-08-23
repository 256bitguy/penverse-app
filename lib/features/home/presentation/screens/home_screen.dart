import 'package:flutter/material.dart';
import '../../../post/presentation/screens/create_post_screen.dart';
import '../widgets/app_drawer.dart';
import '../widgets/mobile_navigation.dart';
import '../widgets/profile_menu.dart';
import '../widgets/web_navigation.dart';
import 'tab_views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  Widget _buildContent() {
    return Container(
      color: const Color(0xFF0D1117),
      child: _getTabView(),
    );
  }

  Widget _getTabView() {
    switch (_currentIndex) {
      case 0:
        return const HomeTabView();
      case 1:
        return const FeedTabView();
      case 2:
        return const CreatePostScreen();
      case 3:
        return const EventsTabView();
      case 4:
        return const CommunitiesTabView();
      default:
        return const HomeTabView();
    }
  }

  IconData _getFeatureIcon() {
    switch (_currentIndex) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.dynamic_feed;
      case 2:
        return Icons.add_circle;
      case 3:
        return Icons.event;
      case 4:
        return Icons.people;
      default:
        return Icons.home;
    }
  }

  String _getFeatureTitle() {
    switch (_currentIndex) {
      case 0:
        return 'Welcome Home';
      case 1:
        return 'Your Feed';
      case 2:
        return 'Create Something New';
      case 3:
        return 'Upcoming Events';
      case 4:
        return 'Your Communities';
      default:
        return 'Welcome';
    }
  }

  String _getFeatureDescription() {
    switch (_currentIndex) {
      case 0:
        return 'Your personalized dashboard is coming soon. Stay tuned for updates!';
      case 1:
        return 'Connect with others through a dynamic social feed. Share and engage with your community.';
      case 2:
        return 'Share your thoughts, photos, and stories with your community.';
      case 3:
        return 'Discover and join exciting events happening in your community.';
      case 4:
        return 'Join groups of like-minded individuals and build meaningful connections.';
      default:
        return 'We\'re working hard to bring you amazing features!';
    }
  }

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width >= 1024;

    if (isWideScreen) {
      return Scaffold(
        body: Row(
          children: [
            WebNavigation(
              selectedIndex: _currentIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 64,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1B1E23),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          _getFeatureTitle(),
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.search, color: Colors.white70),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications_outlined,
                              color: Colors.white70),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        const ProfileMenu(),
                      ],
                    ),
                  ),
                  Expanded(child: _buildContent()),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: _currentIndex != 2
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                backgroundColor: Theme.of(context).primaryColor,
                child: const Icon(Icons.add),
              )
            : null,
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1E23),
        title: Text(
          _getFeatureTitle(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white70),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.white70),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: _buildContent(),
      bottomNavigationBar: MobileNavigation(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}