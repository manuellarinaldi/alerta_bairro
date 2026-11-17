
import 'package:flutter/material.dart';

class DetalheRegiaoScreen extends StatelessWidget {
  final String nome;
  final String risco;
  final String nivelAgua;
  final String orientacao;

  const DetalheRegiaoScreen({
    super.key,
    required this.nome,
    required this.risco,
    required this.nivelAgua,
    required this.orientacao,
  });

  Color corDoRisco() {
    if (risco == 'Normal') {
      return Colors.green.shade800;
    } else if (risco == 'Atenção') {
      return Colors.orange.shade800;
    } else if (risco == 'Alerta') {
      return Colors.red.shade800;
    } else {
      return Colors.red.shade900;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),

      appBar: AppBar(
        backgroundColor: const Color(0xFF123B63),
        foregroundColor: Colors.white,
        title: const Text(
          'Detalhes da região',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nome,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF123B63),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(18),

                leading: Icon(
                  Icons.warning_amber_rounded,
                  size: 36,
                  color: corDoRisco(),
                ),

                title: const Text(
                  'Nível de risco',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                  ),
                ),

                subtitle: Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: corDoRisco(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    risco.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(18),

                leading: const Icon(
                  Icons.waves,
                  size: 36,
                  color: Color(0xFF2196F3),
                ),

                title: const Text(
                  'Nível da água',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                  ),
                ),

                subtitle: Text(
                  nivelAgua,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Orientações de segurança',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF123B63),
              ),
            ),

            const SizedBox(height: 12),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                orientacao,
                style: const TextStyle(
                  fontSize: 19,
                  height: 1.6,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111111),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Informações demonstrativas. Dados simulados.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF374151),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
