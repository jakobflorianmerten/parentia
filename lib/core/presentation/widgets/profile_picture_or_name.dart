import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfilePictureOrName extends StatelessWidget {
  final String profilePicture;
  final String name;
  const ProfilePictureOrName({
    super.key,
    required this.profilePicture,
    required this.name,
  });

  bool get _hasValidPicture {
    return profilePicture.isNotEmpty &&
        (profilePicture.startsWith('http://') ||
            profilePicture.startsWith('https://'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: BoxBorder.all(color: Theme.of(context).colorScheme.primary),
        color: Theme.of(context).colorScheme.surface,
      ),
      padding: EdgeInsets.all(1),
      child: _hasValidPicture
          ? ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: profilePicture,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Image.asset('assets/images/profile_default.png'),
                ),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Padding(
                      padding: EdgeInsetsGeometry.all(17),
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                      ),
                    ),
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
