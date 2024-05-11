void main() {
  String gfg = "Geeks1For2Geeks3is4the5best6computer7science8website.";

  // Splitting each character
  // of the string
  print(gfg.split(''));
  print(gfg.split(new RegExp(r"[0-9]"))); // Prints: [Geeks, For, Geeks, is, the, best, computer, science, website.]
  print('---------------------------------');
  String dupStr = "This string has has a typo";
  print(dupStr.split(' '));
  print(dupStr.split(' ').toSet());//{This, string, has, a, typo}
  print(dupStr.split(' ').toSet().join(' '));//This string has a typo
}
