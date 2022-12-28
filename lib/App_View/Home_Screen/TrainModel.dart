class TrainModel {
  TrainModel({
    required this.data,
  });
  late final List<Data> data;

  TrainModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.trainName,
    required this.trainCode,
    required this.typeId,
    required this.modeId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String trainName;
  late final String trainCode;
  late final String typeId;
  late final String modeId;
  late final String status;
  late final String createdAt;
  late final String updatedAt;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trainName = json['train_name'];
    trainCode = json['train_code'];
    typeId = json['type_id'];
    modeId = json['mode_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['train_name'] = trainName;
    _data['train_code'] = trainCode;
    _data['type_id'] = typeId;
    _data['mode_id'] = modeId;
    _data['status'] = status;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}
