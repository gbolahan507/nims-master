import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/auth/login_form.dart';
import 'package:nims/screens/auth/auth_screen.dart';
import 'package:nims/screens/auth/details_screen.dart';
import 'package:nims/screens/auth/fpw_screen.dart';
import 'package:nims/screens/auth/register_screen.dart';
import 'package:nims/screens/favourites/favouritescreen.dart';
import 'package:nims/screens/history/history.dart';
import 'package:nims/screens/measurements/user_measurement_screen.dart';
import 'package:nims/screens/measurements/user_measurement_screen_outfit.dart';
import 'package:nims/screens/orders/trackorders.dart';
import 'package:nims/screens/payment/carddetails.dart';
import 'package:nims/screens/payment/creditlinecode.dart';
import 'package:nims/screens/products/products_screen.dart';
import 'package:nims/screens/profile/profilescreen.dart';
import 'package:nims/screens/style/select_style_screen.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'package:nims/presentation/platform_adaptive.dart';
import 'package:nims/screens/loading_screen.dart';
import 'package:nims/screens/auth/login_screen.dart';
import 'package:nims/store/store.dart';
import 'package:nims/middleware/middleware.dart';
import 'package:nims/models/app_state.dart';

import 'screens/categories/categories.dart';
import 'screens/payment/paymentscreen.dart';
import 'screens/style/measurements.dart';
import 'containers/products/product_grid_item.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new ReduxApp());
}
class ReduxApp extends StatelessWidget {
  
  TextEditingController  _username =  TextEditingController();
  TextEditingController _password = TextEditingController();
  final store = createStore();

  ReduxApp();

  @override
  Widget build(BuildContext context) {
    return new PersistorGate(
      persistor: persistor,
      loading: new LoadingScreen(),
      builder: (context) => new StoreProvider<AppState>(
          store: store,
          child: new MaterialApp(
            debugShowCheckedModeBanner: false,
              title: 'Nims Craft',
              theme: defaultTargetPlatform == TargetPlatform.iOS
                  ? kIOSTheme
                  : kDefaultTheme,
              routes: <String, WidgetBuilder>{
                '/': (BuildContext context) =>

                    new StoreConnector<AppState, dynamic>(
                        converter: (store) => store.state.auth.isAuthenticated,
                        builder: (BuildContext context, isAuthenticated) =>
                            isAuthenticated
                                ? new ProductsScreen()
                                : new PaymentScreen()),
                '/login': (BuildContext context) => new LoginScreen(),
                '/main': (BuildContext context) => new ProductsScreen(),
                '/register': (BuildContext context) => new RegisterScreen(),
                '/register-details': (BuildContext context) => new DetailsScreen(username: _username.text, password: _password.text,),
                '/fpw': (BuildContext context) => new FPWScreen(),
                '/user-measurement': (BuildContext context) => new UserMeasurementScreen(),
                '/user-measurement-outfit': (BuildContext context) => new UserMeasurementOutfitScreen(),
                '/profile-screen': (BuildContext context) => new ProfileScreen(),
                '/style': (BuildContext context) => new MeasurementScreen(),
                '/track-orders': (BuildContext context) => new TrackOrders(),
                '/favourite-screen': (BuildContext context) => new FavouriteScreen(),
                '/history-screen': (BuildContext context) => new HistoryScreen(),
                '/category-screen': (BuildContext context) => new CategoryScreen(),
                '/payment-screen': (BuildContext context) => new PaymentScreen(),
                '/credit_line_code': (BuildContext context) => new CreditLineCode(),
                '/card_details': (BuildContext context) => new CardDetails(),
              })),
    );
  }
}
