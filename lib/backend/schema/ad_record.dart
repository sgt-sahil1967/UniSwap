import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdRecord extends FirestoreRecord {
  AdRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "post_photo" field.
  String? _postPhoto;
  String get postPhoto => _postPhoto ?? '';
  bool hasPostPhoto() => _postPhoto != null;

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _postPhoto = snapshotData['post_photo'] as String?;
    _postTitle = snapshotData['post_title'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _likes = getDataList(snapshotData['likes']);
    _number = snapshotData['number'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _location = snapshotData['location'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ad');

  static Stream<AdRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdRecord.fromSnapshot(s));

  static Future<AdRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdRecord.fromSnapshot(s));

  static AdRecord fromSnapshot(DocumentSnapshot snapshot) => AdRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  String? number,
  int? price,
  String? location,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_photo': postPhoto,
      'post_title': postTitle,
      'post_description': postDescription,
      'post_user': postUser,
      'time_posted': timePosted,
      'number': number,
      'price': price,
      'location': location,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdRecordDocumentEquality implements Equality<AdRecord> {
  const AdRecordDocumentEquality();

  @override
  bool equals(AdRecord? e1, AdRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postPhoto == e2?.postPhoto &&
        e1?.postTitle == e2?.postTitle &&
        e1?.postDescription == e2?.postDescription &&
        e1?.postUser == e2?.postUser &&
        e1?.timePosted == e2?.timePosted &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.number == e2?.number &&
        e1?.price == e2?.price &&
        e1?.location == e2?.location &&
        e1?.name == e2?.name;
  }

  @override
  int hash(AdRecord? e) => const ListEquality().hash([
        e?.postPhoto,
        e?.postTitle,
        e?.postDescription,
        e?.postUser,
        e?.timePosted,
        e?.likes,
        e?.number,
        e?.price,
        e?.location,
        e?.name
      ]);

  @override
  bool isValidKey(Object? o) => o is AdRecord;
}
