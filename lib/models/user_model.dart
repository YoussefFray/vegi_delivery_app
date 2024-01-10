class UserModel {
  String userName;
  String userEmail;
  String userImage;
  String userUid;

  // Default constructor with default values
  UserModel({
    required this.userEmail,
    required this.userImage,
    required this.userName,
    required this.userUid,
  });

  // Default constructor with default values
  UserModel.empty()
      : userEmail = '',
        userImage = '',
        userName = '',
        userUid = '';
}
