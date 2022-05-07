/// loginType : 0
/// edit : 1
/// bindType : 0
/// userType : ""
/// avatar : ""
/// userName : ""
/// userId : ""
/// token : ""
/// studyNo : ""
/// schoolName : ""
/// avatarRelativeUrl : ""
/// isAudit : ""

class UserInfo {
  UserInfo({
      int? loginType, 
      int? edit, 
      int? bindType, 
      String? userType, 
      String? avatar, 
      String? userName, 
      String? userId, 
      String? token, 
      String? studyNo, 
      String? schoolName, 
      String? avatarRelativeUrl, 
      String? isAudit,}){
    _loginType = loginType;
    _edit = edit;
    _bindType = bindType;
    _userType = userType;
    _avatar = avatar;
    _userName = userName;
    _userId = userId;
    _token = token;
    _studyNo = studyNo;
    _schoolName = schoolName;
    _avatarRelativeUrl = avatarRelativeUrl;
    _isAudit = isAudit;
}

  UserInfo.fromJson(dynamic json) {
    _loginType = json['loginType'];
    _edit = json['edit'];
    _bindType = json['bindType'];
    _userType = json['userType'];
    _avatar = json['avatar'];
    _userName = json['userName'];
    _userId = json['userId'];
    _token = json['token'];
    _studyNo = json['studyNo'];
    _schoolName = json['schoolName'];
    _avatarRelativeUrl = json['avatarRelativeUrl'];
    _isAudit = json['isAudit'];
  }
  int? _loginType;
  int? _edit;
  int? _bindType;
  String? _userType;
  String? _avatar;
  String? _userName;
  String? _userId;
  String? _token;
  String? _studyNo;
  String? _schoolName;
  String? _avatarRelativeUrl;
  String? _isAudit;
UserInfo copyWith({  int? loginType,
  int? edit,
  int? bindType,
  String? userType,
  String? avatar,
  String? userName,
  String? userId,
  String? token,
  String? studyNo,
  String? schoolName,
  String? avatarRelativeUrl,
  String? isAudit,
}) => UserInfo(  loginType: loginType ?? _loginType,
  edit: edit ?? _edit,
  bindType: bindType ?? _bindType,
  userType: userType ?? _userType,
  avatar: avatar ?? _avatar,
  userName: userName ?? _userName,
  userId: userId ?? _userId,
  token: token ?? _token,
  studyNo: studyNo ?? _studyNo,
  schoolName: schoolName ?? _schoolName,
  avatarRelativeUrl: avatarRelativeUrl ?? _avatarRelativeUrl,
  isAudit: isAudit ?? _isAudit,
);
  int? get loginType => _loginType;
  int? get edit => _edit;
  int? get bindType => _bindType;
  String? get userType => _userType;
  String? get avatar => _avatar;
  String? get userName => _userName;
  String? get userId => _userId;
  String? get token => _token;
  String? get studyNo => _studyNo;
  String? get schoolName => _schoolName;
  String? get avatarRelativeUrl => _avatarRelativeUrl;
  String? get isAudit => _isAudit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['loginType'] = _loginType;
    map['edit'] = _edit;
    map['bindType'] = _bindType;
    map['userType'] = _userType;
    map['avatar'] = _avatar;
    map['userName'] = _userName;
    map['userId'] = _userId;
    map['token'] = _token;
    map['studyNo'] = _studyNo;
    map['schoolName'] = _schoolName;
    map['avatarRelativeUrl'] = _avatarRelativeUrl;
    map['isAudit'] = _isAudit;
    return map;
  }

  @override
  String toString() {
    return 'UserInfo{_loginType: $_loginType, _edit: $_edit, _bindType: $_bindType, _userType: $_userType, _avatar: $_avatar, _userName: $_userName, _userId: $_userId, _token: $_token, _studyNo: $_studyNo, _schoolName: $_schoolName, _avatarRelativeUrl: $_avatarRelativeUrl, _isAudit: $_isAudit}';
  }
}