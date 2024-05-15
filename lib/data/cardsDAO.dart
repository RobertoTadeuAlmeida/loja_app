import 'package:loja_app/app/models/Cards.dart';
import 'package:loja_app/data/dataBase.dart';
import 'package:sqflite/sqflite.dart';

class CardDao {
  static const String tabelaSql = 'CREATE TABLE $_tableName('
      '$_name TEXT '
      '$_foto TEXT)';
  static const String _tableName = 'cardTable';
  static const String _name = 'nome';
  static const String _foto = 'image';

  save(Cards produto) async {}

  Future<List<Cards>> findAll() async {
    print('Acessando findAll');
    final Database dataBase = await getDatabase();
    final List<Map<String, dynamic>> result = await dataBase.query(_tableName);
    print('banco de dados: $result');
    return toList(result);
  }

  List<Cards> toList(List<Map<String, dynamic>> mapDeCards) {
    print('convertendo toList');
    final List<Cards> produtos = [];
    for (Map<String, dynamic> linha in mapDeCards) {
      final Cards produto = Cards(linha[_foto], linha[_name]);
      produtos.add(produto);
    }
    print('Lista de produtos: $produtos');
    return produtos;
  }

  Future<List<Cards>> find(String nomeDoProduto) async {
    print('acessando find');
    final Database database = await getDatabase();
    final List<Map<String, dynamic>> result = await database.query(
      _tableName,
      where: '$_name = ?',
      whereArgs: [nomeDoProduto],
    );
    print('tarefa encontrada: ${toList(result)}');
    return toList(result);
  }

  delete(String nomeProduto) async {}
}
