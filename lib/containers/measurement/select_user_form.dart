import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/measurement/widget/select_user_widgets.dart';
import 'package:redux/redux.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class SelectUserForm extends StatefulWidget {
  @override
  _SelectUserFormState createState() => new _SelectUserFormState();
}

class _SelectUserFormState extends State<SelectUserForm> {
  final formKey = new GlobalKey<FormState>();
  bool newClients = true;
  bool selectType = true;
  TextEditingController _email; 

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context, String username, String password) =>
          store.dispatch(login(context, username, password));
    }, builder: (BuildContext context, loginAction) {
        return selectType
            ? theSelectUser(
              newClient: () {
                print('new client');
               Navigator.pushNamed(context, '/user-measurement-outfit');
              },
              oldClient: () {
                print('old client');
                this.setState(() {
                  this.newClients = false;
                  this.selectType = false;
                });
              })
            :
            this.newClients ?
            theNewClient(context:context,goBack: () {
                 this.setState(() { 
                  this.selectType = true;
                });
            },controller: _email) :
             theExistingClient(context:context,goBack: () {
                 this.setState(() { 
                  this.selectType = true;
                });
            }, controller: _email);
      });
    }
  }
  