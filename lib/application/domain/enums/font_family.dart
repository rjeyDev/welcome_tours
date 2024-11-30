enum FontFamily { poppins, inter }

extension FontFamilyName on FontFamily {
  String get name {
    switch (this) {
      case FontFamily.poppins:
        return 'Poppins';
      case FontFamily.inter:
        return 'Inter';
    }
  }
}
