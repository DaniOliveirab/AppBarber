import 'dart:convert'; // Importa a biblioteca para codificação e decodificação de JSON
import 'package:http/http.dart' as http; // Importa o pacote 'http' para realizar requisições HTTP

// Classe utilitária para realizar operações HTTP (GET, POST, PUT, DELETE)
class AppHttpHelper {
  // URL base da API que será utilizada nas requisições
  static const String _baseUrl = 'https://your-api-url.com';

  // Método para realizar uma requisição GET
  // Recebe um endpoint (parte da URL) como parâmetro
  static Future<Map<String, dynamic>> get(String endpoint) async {
    // Realiza a requisição GET para o endpoint especificado
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    // Trata a resposta recebida e retorna os dados em formato JSON
    return _handleResponse(response);
  }

  // Método para realizar uma requisição POST
  // Recebe um endpoint e os dados a serem enviados como parâmetros
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    // Realiza a requisição POST para o endpoint especificado, enviando os dados como JSON
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'}, // Define o tipo de conteúdo como JSON
      body: json.encode(data), // Converte os dados para o formato JSON
    );
    // Trata a resposta recebida e retorna os dados em formato JSON
    return _handleResponse(response);
  }

  // Método para realizar uma requisição PUT
  // Recebe um endpoint e os dados a serem enviados como parâmetros
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    // Realiza a requisição PUT para o endpoint especificado, enviando os dados como JSON
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'}, // Define o tipo de conteúdo como JSON
      body: json.encode(data), // Converte os dados para o formato JSON
    );
    // Trata a resposta recebida e retorna os dados em formato JSON
    return _handleResponse(response);
  }  

  // Método para realizar uma requisição DELETE
  // Recebe um endpoint como parâmetro
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    // Realiza a requisição DELETE para o endpoint especificado
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    // Trata a resposta recebida e retorna os dados em formato JSON
    return _handleResponse(response);
  }

  // Método privado que trata a resposta HTTP
  // Converte a resposta em formato JSON se o status for 200 (OK)
  // Caso contrário, lança uma exceção com o código de status
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      // Decodifica e retorna o corpo da resposta como um Map (JSON)
      return json.decode(response.body);
    } else {
      // Lança uma exceção caso o status não seja 200
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
