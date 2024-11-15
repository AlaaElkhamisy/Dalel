class OnboardingModel {
  final String imagePath;
  final String title;
  final String subtitle;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
}

List<OnboardingModel> onBoardingData = [
  OnboardingModel(
      imagePath: "assets/images/Onboarding1.png",
      title: "Explore The history with Dalel in a smart way",
      subtitle:
          "Using our app’s history libraries you can find many historical periods"),
  OnboardingModel(
      imagePath: "assets/images/Onboarding2.png",
      title: "From every place on earth",
      subtitle: "A big variety of ancient places from all over the world"),
  OnboardingModel(
      imagePath: "assets/images/Onboarding3.png",
      title: "Using modern AI technology for better user experience",
      subtitle:
          "AI provide recommendations and helps you to continue the search journey")
];
