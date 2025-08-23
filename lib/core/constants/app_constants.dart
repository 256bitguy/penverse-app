class AppConstants {
  static const String appName = 'Akalpit';
  
  // Onboarding Screen Constants
  static const List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'स्टेज नहीं मिलेगा तो स्टार कैसे बनेगा? ✨',
      description: 'Akalpit vision is to provide a stage to the talent and give fame and identification for their work and prove.',
      imagePath: 'assets/images/onboarding1.png',
    ),
    OnboardingItem(
      title: 'Verbal competitions',
      description: 'A wide range of competitions from your city and state with also the inter-school and inter-collegiate available near you.',
      imagePath: 'assets/images/onboarding2.png',
    ),
    OnboardingItem(
      title: 'Post Your Next Writing',
      description: 'Akalpit provides a wide range of posting according to your own interests POEM,STORY,RESEARCH and access to others posts and give a chance to connect to others story.',
      imagePath: 'assets/images/onboarding3.png',
    ),
  ];
}

class OnboardingItem {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}