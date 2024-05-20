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

  save(Cards produto) async {
    print('iniciando save:');
    final Database database = await getDatabase();
    var itensExists = await find(produto.name);
    Map<String, dynamic> cardsMap = toMap(produto);
    if (itensExists.isEmpty) {
      print('O produto nao existia');
      return await database.insert(_tableName, cardsMap);
    } else {
      print('A tarefa ja existia');
      return await database.update(
        _tableName,
        cardsMap,
        where: '$_name = ?',
        whereArgs: [produto.name],
      );
    }
  }

  Map<String, dynamic> toMap(Cards produto) {
    print('convertendo produto em map');
    final Map<String, dynamic> mapaDeProdutos = {};
    mapaDeProdutos[_name] = produto.name;
    mapaDeProdutos[_foto] = produto.image;
    print('mapa de produtos e $mapaDeProdutos');
    return mapaDeProdutos;
  }

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

  delete(String nomeProduto) async {
    print('Deletando produto:');
    final Database database = await getDatabase();
    return database
        .delete(_tableName, where: '$_name = ?', whereArgs: [nomeProduto]);
  }
}
