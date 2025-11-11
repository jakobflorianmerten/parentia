import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/error_message.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/search_bar.dart';
import 'package:parentia/features/meetup/application/blocs/load_users_bloc/bloc/load_users_bloc.dart';
import 'package:parentia/features/meetup/presentation/widgets/select_user_element.dart';

class SearchUserWidget extends StatelessWidget {
  const SearchUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<LoadUsersBloc>()..add(LoadUsersEvent.loadUsers()),
      child: Container(
        height: 600, 
        padding: EdgeInsetsGeometry.all(20),
        child: Builder(
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min, // shrink-wrap the Column
              children: [
                addHorizontalSpace(20),
                CustomSearchBar(
                  onChanged: (value) {
                    BlocProvider.of<LoadUsersBloc>(
                      context,
                    ).add(LoadUsersEvent.textSearchUsers(value));
                  },
                ),
                addVerticalSpace(30),
                BlocBuilder<LoadUsersBloc, LoadUsersState>(
                  builder: (context, state) {
                    if (state.isLoading)
                      return Center(child: CustomLoadingAnimationElement());
                    if (state.failureOrSuccess.isSome()) {
                      return state.failureOrSuccess.fold(
                        () => Container(), // noch gar kein Ergebnis
                        (either) => either.fold(
                          (failure) {
                            return CustomErrorMessage(
                              errorMessage: failure.toString(),
                            );
                          },
                          (users) {
                            // Hier das Expanded, damit die ListView den Raum füllt
                            return Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,

                                itemCount: users.length,
                                itemBuilder: (context, index) =>
                                    SelectUserElement(user: users[index]),
                              ),
                            );
                          },
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
