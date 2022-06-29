class ArthematicSplitscreen {
  int? first;
  int? second;

  ArthematicSplitscreen(this.first, this.second);

  int add (){
    return first! + second!;
  }

  int sub(){
    return first! - second!;
  }
}