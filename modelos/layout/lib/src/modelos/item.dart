class Item {
  String title;
  bool done;
  Item({this.title, this.done});
  Item.fromJson(Map<String, dynamic> json){
    title = json['title'];
    done = json['done'];
  }
  Map<String, dynamic> toJon(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;//indica que vai reseber tible e repasar para title
    data['done'] = this.done;
  }
}
//exemplo de como criar e passar valor para class item  -> var nome = new Item (title: "valor", done:"valor");
//dica pode buscar por json to dart e copie os trabutos tipo -> {title: "valor", done:"valor"}