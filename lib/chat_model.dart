
import 'package:final_app_cet/contact_model.dart';

class ChatModel {
  final bool isTyping;
  final String lastMessage;
  final String lastMessageTime;
  final ContactModel contact;

  ChatModel(
  {this.isTyping, this.lastMessage, this.lastMessageTime, this.contact}
      );
  static List<ChatModel> list = [
    ChatModel(
        isTyping: true,
        lastMessage: "hello!",
        lastMessageTime: "2",
        contact: ContactModel(name: "Maxim Green"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "I give her medicine",
      lastMessageTime: "3",
      contact: ContactModel(name: "Mary Florie"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "I will come there soon",
      lastMessageTime: "9",
      contact: ContactModel(name: "Jackie Bread"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "To-do list is done",
      lastMessageTime: "1",
      contact: ContactModel(name: "Benny Rose Hope"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "Call you later",
      lastMessageTime: "2",
      contact: ContactModel(name: "Karen Jon"),
    ),

  ];
}