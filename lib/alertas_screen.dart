
import 'package:flutter/material.dart';

class AlertasScreen extends StatelessWidget {
  const AlertasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF123B63),
        foregroundColor: Colors.white,
        title: const Text(
          'Alertas recebidos',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Confira os avisos e fique atento aos riscos da sua região.',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              height: 1.4,
              color: Color(0xFF111827),
            ),
          ),

          const SizedBox(height: 20),

          Card(
            color: Colors.white,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const Icon(
                Icons.warning_amber_rounded,
                color: Colors.orange,
                size: 36,
              ),
              title: const Text(
                'Atenção chuvas fortes',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.shade800,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'ATENÇÃO',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              subtitle: const Text(
                'Jardim São Paulo\nDados simulados',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
              isThreeLine: true,
            ),
          ),

          Card(
            color: Colors.white,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const Icon(
                Icons.error,
                color: Colors.red,
                size: 36,
              ),
              title: const Text(
                'Risco de alagamento',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.red.shade800,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'ALERTA',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              subtitle: const Text(
                'Av.Paulista\nDados simulados',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
              isThreeLine: true,
            ),
          ),

          Card(
            color: Colors.white,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: const Icon(
                Icons.info,
                color: Color.fromARGB(255, 46, 125, 50),
                size: 36,
              ),
              title: const Text(
                'Monitoramento normal',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF111827),
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'NORMAL',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              subtitle: const Text(
                'Parque das Flores\nDados simulados',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}
