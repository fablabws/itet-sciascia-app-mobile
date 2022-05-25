import 'package:flutter/material.dart';
import 'package:itet_sciascia_app_mobile/appbar.dart';

import '../drawer.dart';
import '../utils/sqllite_tools.dart';

class IMieiProgetti extends StatefulWidget {
  final title = 'I miei progetti';

  @override
  _IMieiProgettiState createState() => _IMieiProgettiState();
}

class _IMieiProgettiState extends State<IMieiProgetti> {
  List<Map<String, dynamic>> _items = [];
  bool _isLoading = true;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _refreshItems() async {
    final data = await SQLHelper.getItems();
    
    setState(() {
      _items = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  void _showForm(int? id) async {
    // if (id != null) {
    //   final existingJournal =
    //       _journals.firstWhere((element) => element['id'] == id);
    //   _titleController.text = existingJournal['title'];
    //   _descriptionController.text = existingJournal['description'];
    // }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(hintText: 'Title'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(hintText: 'Description'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Save new journal
                      if (id == null) {
                        await _addItem();
                      }

                      // if (id != null) {
                      //   await _updateItem(id);
                      // }

                      _titleController.text = '';
                      _descriptionController.text = '';

                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Crea' : 'Modifica'),
                  )
                ],
              ),
            ));
  }

  Future<void> _addItem() async {
    await SQLHelper.createItem(
        _titleController.text, _descriptionController.text);
    
    _refreshItems();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppbar(),
        body: _isLoading ?
          const Center(
              child: CircularProgressIndicator(),
          )
         : ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) => Card(
                color: Colors.blue[200],
                margin: const EdgeInsets.all(15),
                child: ListTile(
                  title: Text(_items[index]['title']),
                  subtitle: Text(_items[index]['description']),
                  trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          // IconButton(
                          //   icon: const Icon(Icons.edit),
                          //   onPressed: () => _showForm(_journals[index]['id']),
                          // ),
                          // IconButton(
                          //   icon: const Icon(Icons.delete),
                          //   onPressed: () =>
                          //       _deleteItem(_journals[index]['id']),
                          // ),
                        ],
                      ),
                    )
                )
            )
         ),
      drawer: Mydrawer(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _showForm(null),
      ),
    );
  }
}
