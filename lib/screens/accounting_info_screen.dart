import 'package:flutter/material.dart';
import '../models/account_info.dart';
import '../data/accounts_data.dart';

class AccountingInfoScreen extends StatefulWidget {
  const AccountingInfoScreen({super.key});

  @override
  State<AccountingInfoScreen> createState() => _AccountingInfoScreenState();
}

class _AccountingInfoScreenState extends State<AccountingInfoScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<AccountInfo> _filteredAccounts = [];

  @override
  void initState() {
    super.initState();
    _filteredAccounts = AccountsData.accounts;
  }

  void _filterAccounts(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredAccounts = AccountsData.accounts;
      } else {
        _filteredAccounts = AccountsData.accounts
            .where((account) =>
                account.code.contains(query) ||
                account.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text('Información Contable'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 247, 242, 235),
              child: TextField(
                controller: _searchController,
                onChanged: _filterAccounts,
                decoration: InputDecoration(
                  hintText: 'Buscar cuenta',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _filteredAccounts.length,
              itemBuilder: (context, index) {
                final account = _filteredAccounts[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 13, 28, 53),
                      child: Text(
                        account.code,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(
                      account.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(account.description),
                    onTap: () => _showAccountDetails(account),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showAccountDetails(AccountInfo account) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Cuenta ${account.code}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              account.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(account.description),
            const SizedBox(height: 12),
            Text(
              'Ejemplo de uso:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(account.example),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }
}
