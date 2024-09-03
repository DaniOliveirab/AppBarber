// Classe responsável por validações de entradas de usuário
class AppValidator {
  
  // Método para validar e-mail
  static String? validateEmail(String? value) {
    // Verifica se o valor é nulo ou vazio
    if (value == null || value.isEmpty) {
      return 'Email is required'; // Retorna uma mensagem se o e-mail não for fornecido
    }

    // Expressão regular para validar o formato do e-mail
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    // Verifica se o valor corresponde ao formato de e-mail
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.'; // Retorna uma mensagem se o e-mail for inválido
    }

    // Retorna null se o e-mail for válido (ou seja, não há erro)
    return null;
  }

  // Método para validar senha
  static String? validatePassword(String? value) {
    // Verifica se o valor é nulo ou vazio
    if (value == null || value.isEmpty) {
      return 'Password is required.'; // Retorna uma mensagem se a senha não for fornecida
    }

    // Verifica se a senha tem menos de 6 caracteres
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.'; // Retorna uma mensagem se a senha for curta
    }

    // Verifica se a senha contém pelo menos uma letra maiúscula
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.'; // Retorna uma mensagem se não houver letra maiúscula
    }

    // Verifica se a senha contém pelo menos um número
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.'; // Retorna uma mensagem se não houver número
    }

    // Verifica se a senha contém pelo menos um caractere especial
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character.'; // Retorna uma mensagem se não houver caractere especial
    }

    // Retorna null se a senha for válida (ou seja, não há erro)
    return null;
  }

  // Método para validar número de telefone
  static String? validatePhoneNumber(String? value) {
    // Verifica se o valor é nulo ou vazio
    if (value == null || value.isEmpty) {
      return 'Phone number is required.'; // Retorna uma mensagem se o número não for fornecido
    }

    // Expressão regular para validar o formato do número de telefone (10 dígitos)
    final phoneRegExp = RegExp(r'^\d{10}$');

    // Verifica se o valor corresponde ao formato de número de telefone
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).'; // Retorna uma mensagem se o número for inválido
    }

    // Retorna null se o número de telefone for válido (ou seja, não há erro)
    return null;
  }
}
