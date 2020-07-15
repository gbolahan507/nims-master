import 'package:redux/redux.dart';

import 'package:nims/reducers/app_reducer.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/middleware/middleware.dart';

Store<AppState> createStore() { 
    Store<AppState> store = new Store(
        appReducer,
        initialState: new AppState(),
        middleware: createMiddleware(),
    );
    persistor.start(store);

    return store;
}