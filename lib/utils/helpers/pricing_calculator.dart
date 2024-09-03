class AppPricingCalculator {
  // Método que calcula o preço total de um produto, incluindo imposto e custo de envio
  static double calculateTotalPrice(double productPrice, String location) {
    // Obtém a taxa de imposto com base na localização
    double taxRate = getTaxRateForLocation(location);
    // Calcula o valor do imposto sobre o preço do produto
    double taxAmount = productPrice * taxRate;

    // Obtém o custo de envio com base na localização
    double shippingCost = getShippingCost(location);

    // Calcula o preço total somando o preço do produto, o valor do imposto e o custo de envio
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice; // Retorna o preço total
  }

  // Método que calcula o custo de envio para um produto e o formata como uma string
  static String calculateShippingCost(double productPrice, String location) {
    // Obtém o custo de envio com base na localização
    double shippingCost = getShippingCost(location);
    // Converte o custo de envio para uma string com duas casas decimais
    return shippingCost.toStringAsFixed(2);
  }

  // Método que calcula o valor do imposto sobre um produto e o formata como uma string
  static String calculateTax(double productPrice, String location) {
    // Obtém a taxa de imposto com base na localização
    double taxRate = getTaxRateForLocation(location);
    // Calcula o valor do imposto sobre o preço do produto
    double taxAmount = productPrice * taxRate;
    // Converte o valor do imposto para uma string com duas casas decimais
    return taxAmount.toStringAsFixed(2);
  }

  // Método auxiliar que retorna a taxa de imposto com base na localização
  // Neste exemplo, a taxa é fixada em 10% independentemente da localização
  static double getTaxRateForLocation(String location) {
    return 0.10; // Taxa de imposto fixa de 10%
  }

  // Método auxiliar que retorna o custo de envio com base na localização
  // Neste exemplo, o custo de envio é fixado em 5 unidades monetárias independentemente da localização
  static double getShippingCost(String location) {
    return 5.00; // Custo de envio fixo de 5 unidades monetárias
  }
}
