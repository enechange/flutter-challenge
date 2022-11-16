const numberTitle = '利用可能';
const powerTitle = '充電出力';
const openTimeTitle = '営業中　';
const closeTimeTitle = '営業時間外';
const unknownTimeTitle = '営業時間';
const holidayTitle = '定休日　';
const defaultNumber = '12台';
const unknown = '不明';
const hyphen = '-';
const noSpotResult = '充電スポットが見つかりません。\nエリアを変えてお試しください。';
const searchErrorText = '予期せぬエラーが発生しました。\nもう一度お試しください。';
const errorText = 'Error';
const loadingText = 'Loading';
const textForSearching = '現在地でポートを検索';
const textForShowList = 'リストを表示';
const apiFields = [
  'images',
  'charger_spot_service_times',
  'now_available',
  'charger_devices',
  'gogoev_charger_devices'
];
const String linkToAppText = '地図アプリで経路を見る';

const Map<String, String> dayOfWeek = {
  'Sunday': '日曜日',
  'Monday': '月曜日',
  'Tuesday': '火曜日',
  'Wednesday': '水曜日',
  'Thursday': '木曜日',
  'Friday': '金曜日',
  'Saturday': '土曜日',
  'Holiday': '祝日',
  'Weekday': '平日',
};

const Map<String, String> dayOfWeekInOneCharacter = {
  '日曜日': '日',
  '月曜日': '月',
  '火曜日': '火',
  '水曜日': '水',
  '木曜日': '木',
  '金曜日': '金',
  '土曜日': '土',
  '祝日': '祝',
  '平日': '平日',
};