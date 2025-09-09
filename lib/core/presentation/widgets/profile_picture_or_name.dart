

import 'package:flutter/material.dart';

class ProfilePictureOrName extends StatelessWidget {
  final String profilePicture;
  final String name;
  const ProfilePictureOrName({super.key, required this.profilePicture, required this.name});

  bool get _hasValidPicture {
    // Einfache Prüfung: nicht leer und sieht wie eine URL aus
    return profilePicture.isNotEmpty &&
        (profilePicture.startsWith('http://') || profilePicture.startsWith('https://'));
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primary
      ),
      padding: EdgeInsets.all(1),
      child: _hasValidPicture
          ? ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                profilePicture,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Fallback: Anfangsbuchstabe
                  return _buildInitial(context);
                },
              ),
            )
          : _buildInitial(context),
    );
  }

  Widget _buildInitial(BuildContext context) {
    return Center(
      child: Text(
        name.isNotEmpty ? name[0].toUpperCase() : '?',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}