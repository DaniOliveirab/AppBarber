import 'package:get_storage/get_storage.dart'; // Importa o pacote GetStorage, que é usado para armazenamento local de dados

// Classe que gerencia o armazenamento local de dados usando GetStorage
class AppLocalStorage {
  // Singleton: Instância única da classe AppLocalStorage
  static final AppLocalStorage _instance = AppLocalStorage._internal();

  // Fábrica que retorna a instância única da classe
  factory AppLocalStorage() {
    return _instance;
  }

  // Construtor privado utilizado para inicializar a instância única (Singleton)
  AppLocalStorage._internal();

  // Instância do GetStorage, que gerencia o armazenamento dos dados
  final _storage = GetStorage();

  // Método assíncrono para salvar dados no armazenamento local
  // Recebe uma chave (key) e um valor (value) como parâmetros
  Future<void> saveData<T>(String key, T value) async {
    // Salva o valor no armazenamento local associado à chave fornecida
    await _storage.write(key, value);
  }

  // Método para ler dados do armazenamento local
  // Recebe uma chave (key) e retorna o valor associado a essa chave
  // Se não encontrar a chave, retorna null
  T? readData<T>(String key) {
    // Lê o valor do armazenamento local associado à chave fornecida
    return _storage.read<T>(key);
  }

  // Método assíncrono para remover dados do armazenamento local
  // Recebe uma chave (key) e remove o valor associado a essa chave
  Future<void> removeData(String key) async {
    // Remove o valor do armazenamento local associado à chave fornecida
    await _storage.remove(key);
  }

  // Método assíncrono para limpar todos os dados do armazenamento local
  Future<void> clearAll() async {
    // Apaga todos os dados armazenados localmente
    await _storage.erase();
  }
}
