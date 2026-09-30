import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Bạn đang đi bộ trong một khu rừng cổ thụ vào một buổi chiều mùa thu. Đột nhiên, bạn phát hiện một hang động bí ẩn với ánh sáng lấp lánh phát ra từ bên trong. Trước cửa hang có một tấm biển cũ kỹ ghi "Kho báu cổ đại - Nguy hiểm chết người".',
        choice1: 'Mạo hiểm đi vào hang động để khám phá',
        choice2: 'Tìm một nhánh cây dài để thăm dò trước'),
    Story(
        storyTitle: 
        'Bạn cẩn thận nhặt một nhánh cây dài và thăm dò bên trong. Nhánh cây chạm phải một sợi dây và kích hoạt một cơ chế cổ xưa. Bỗng nhiên, mặt đất rung chuyển và một lối đi bí mật hiện ra bên cạnh hang động!',
        choice1: 'Đi vào lối đi bí mật mới xuất hiện',
        choice2: 'Quay về và gọi thêm người hỗ trợ'),
    Story(
        storyTitle:
        'Bên trong hang động, bạn thấy một căn phòng rộng lớn với những bức tranh cổ trên tường và một chiếc rương kho báu ở giữa. Tuy nhiên, có hai con đường dẫn đến rương: một đường ngắn đi qua những viên đá có vẻ không chắc chắn, và một đường dài hơn nhưng an toàn hơn.',
        choice1: 'Liều lĩnh đi đường ngắn để nhanh đến được rương',
        choice2: 'Kiên nhẫn đi theo đường dài an toàn hơn'),
    Story(
        storyTitle:
        'Bạn quyết định quay về tìm sự giúp đỡ. Khi quay lại với một nhóm thám hiểm, hang động đã biến mất hoàn toàn! Có vẻ cơ hội chỉ đến một lần...',
        choice1: 'Bắt đầu lại cuộc phiêu lưu',
        choice2: ''),
    Story(
        storyTitle:
        'Những viên đá không chịu nổi sức nặng của bạn. Sàn hang động sụp đổ và bạn rơi xuống một hố sâu tối đen. May mắn thay, bạn tỉnh dậy ở cửa hang động - có vẻ thần rừng đã cho bạn một cơ hội mới.',
        choice1: 'Bắt đầu lại cuộc phiêu lưu',
        choice2: ''),
    Story(
        storyTitle:
        'Sau khi vượt qua con đường an toàn, bạn đến được chiếc rương. Bên trong có một viên đá quý phát sáng và một mảnh bản đồ cổ chỉ đường đến một ngôi đền bí ẩn. Có vẻ đây mới chỉ là khởi đầu của một cuộc phiêu lưu vĩ đại...',
        choice1: 'Bắt đầu cuộc phiêu lưu mới',
        choice2: '')
  ];

  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber < 3;
  }
}
