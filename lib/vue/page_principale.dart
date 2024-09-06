import 'package:chatflutter/model/message.dart';
import 'vue_liste_message.dart';
import 'package:chatflutter/vue/vue_envoyer_message.dart';
import 'package:flutter/material.dart';

class PagePrincipale extends StatefulWidget{
  const PagePrincipale({super.key});

  @override
  State<PagePrincipale> createState() {
    return _PagePrincipaleState();
  }
}

class _PagePrincipaleState extends State<PagePrincipale> {
  List<Message>? messages;

  @override
  void initState() {
    super.initState();

    messages = [];
  }

  void _sauvegarderMessage(String alias, String message)
  {
    setState(() {
      messages?.add(Message(alias: alias, message: message));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      VueListeMessage(messages: messages!),
      VueEnvoyerMessage(envoyerMessage: _sauvegarderMessage)
    ]);
  }
  
}