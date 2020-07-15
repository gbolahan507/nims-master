import 'package:redux_persist/redux_persist.dart';

import 'package:nims/models/app_state.dart';
import 'package:nims/reducers/auth_reducer.dart';

AppState appReducer(AppState state, action){
    //print(action);
    if (action is PersistLoadedAction<AppState>) {
        return action.state ?? state;
    } else {
        return new AppState(
            auth: authReducer(state.auth, action),
        );
    }
} 