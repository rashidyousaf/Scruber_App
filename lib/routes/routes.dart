import '../common/view/auth/forget_screen.dart';
import '../common/view/home_screen/home_screen.dart';
import '../common/view/setting_screen/cards_screen.dart';
import '../common/view/setting_screen/change_password_screen.dart';
import '../common/view/setting_screen/help_screen.dart';
import '../common/view/setting_screen/notifications_screen.dart';
import '../common/view/setting_screen/privacy_screen.dart';
import '../common/view/setting_screen/setting_screen.dart';
import '../const/conts.dart';
import '../customer/views/add_cars_screen/add_cars_screen.dart';
import '../customer/views/address_screen/address_screen.dart';
import '../common/view/auth/login_screen.dart';
import '../common/view/auth/signup_screen.dart';
import '../customer/views/available_cars_screen/available_cars_screen.dart';
import '../customer/views/booking_details_screen/booking_details_screen.dart';
import '../customer/views/booking_screen/booking_screen.dart';
import '../customer/views/checkout_screen/checkout_screen.dart';
import '../customer/views/checkout_screen/checkout_screen2.dart';
import '../customer/views/checkout_screen/checkout_screen3.dart';
import '../customer/views/contactus_screen/contactus_screen.dart';
import '../customer/views/customer_home_screen/customer_home_screen.dart';
import '../customer/views/favorites_screen/favorites_screen.dart';
import '../customer/views/service_provider_profile_screen/service_provider_profile_screen.dart';
import '../customer/views/service_screen/service_screen.dart';
import '../customer/views/splash_screen/splash_screen.dart';
import '../customer/views/time_slot_screen/time_slot_screen.dart';
import '../technician/views/booking_screens/provider_booking_screen1.dart';
import '../technician/views/booking_screens/provider_booking_screen2.dart';
import '../technician/views/booking_screens/provider_booking_screen3.dart';
import '../technician/views/earning_screen/earning_screen.dart';
import '../technician/views/edit_profile_screen/edit_profile_screen.dart';
import '../technician/views/offer_details_screen/offer_details_screen.dart';
import '../technician/views/offer_details_screen/tracking_screens/tracking_screen1.dart';
import '../technician/views/offer_details_screen/tracking_screens/tracking_screen2.dart';
import '../technician/views/offer_details_screen/tracking_screens/tracking_screen3.dart';
import '../technician/views/offer_details_screen/tracking_screens/tracking_screen4.dart';
import '../technician/views/service_provider_home_screen.dart/service_provider_home.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case "/homeScreen":
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case "/loginScreen":
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case "/signupScreen":
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case "/availablecarsScreen":
        return MaterialPageRoute(
            builder: (context) => const AvailableCarsScreen());
      case "/addCarsScreen":
        return MaterialPageRoute(builder: (context) => const AddCarsScreen());
      case "/forgetScreen":
        return MaterialPageRoute(builder: (context) => const ForgetScreen());
      case "/mapScreen":
        return MaterialPageRoute(
            builder: (context) => const CustomerHomeScreen());
      case "/timeSlotScreen":
        return MaterialPageRoute(builder: (context) => const TimeSlotScreen());
      case "/checkoutScreen":
        return MaterialPageRoute(builder: (context) => const CheckoutScreen());
      case "/checkoutScreen2":
        return MaterialPageRoute(builder: (context) => const CheckoutScreen2());
      case "/checkoutScreen3":
        return MaterialPageRoute(builder: (context) => const CheckoutScreen3());
      case "/serviceProviderProfileScreen":
        return MaterialPageRoute(
            builder: (context) => const ServiceProviderProfileScreen());
      case "/bookingScreen":
        return MaterialPageRoute(builder: (context) => const BookingScreen());
      case "/bookingDetailsScreen":
        return MaterialPageRoute(
            builder: (context) => const BookingDetailsScreen());
      case "/favoritesScreen":
        return MaterialPageRoute(builder: (context) => const FavoritesScreen());
      case "/addressScreen":
        return MaterialPageRoute(builder: (context) => const AddressScreen());
      case "/contactusScreen":
        return MaterialPageRoute(builder: (context) => const ContactusScreen());
      case "/settingScreen":
        return MaterialPageRoute(builder: (context) => const SettingScreen());
      case "/notificationsScreen":
        return MaterialPageRoute(
            builder: (context) => const NotificationsScreen());
      case "/cardsScreen":
        return MaterialPageRoute(builder: (context) => const CardsScreen());
      case "/changepasswordScreen":
        return MaterialPageRoute(
            builder: (context) => const ChangePasswordScreen());
      case "/privacyScreen":
        return MaterialPageRoute(builder: (context) => const PrivacyScreen());
      case "/helpScreen":
        return MaterialPageRoute(builder: (context) => const HelpScreen());
      case "/serviceScreen":
        return MaterialPageRoute(builder: (context) => const ServiceScreen());

      // this section for servicer provider routes
      case "/serviceproviderhomeScreen":
        return MaterialPageRoute(
            builder: (context) => const ServiceProviderHomeScreen());
      case "/offerdetailsScreen":
        return MaterialPageRoute(
            builder: (context) => const OfferDetailsScreen());
      case "/trackingScreen1":
        return MaterialPageRoute(builder: (context) => const TrackingScreen1());
      case "/trackingScreen2":
        return MaterialPageRoute(builder: (context) => const TrackingScreen2());
      case "/trackingScreen3":
        return MaterialPageRoute(builder: (context) => const TrackingScreen3());
      case "/trackingScreen4":
        return MaterialPageRoute(builder: (context) => const TrackingScreen4());
      case "/editprofileScreen":
        return MaterialPageRoute(
            builder: (context) => const EditProfileScreen());
      case "/providerbookingScreen1":
        return MaterialPageRoute(
            builder: (context) => const ProviderBookingScreen());
      case "/providerbookingScreen2":
        return MaterialPageRoute(
            builder: (context) => const ProviderBookingScreen2());
      case "/providerbookingScreen3":
        return MaterialPageRoute(
            builder: (context) => const ProviderBookingScreen3());
      case "/earningScreen":
        return MaterialPageRoute(builder: (context) => const EarningScreen());
    }
    return null;
  }
}
