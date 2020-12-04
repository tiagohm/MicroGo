abstract class Exportable {
  bool get isPublic;

  bool get isPrivate => !isPublic;
}
