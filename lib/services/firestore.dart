import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService{
  //get collection of notes 
  final CollectionReference notes =
  FirebaseFirestore.instance.collection('notes');
  
  
  //create : add a new note
  Future<void> addNote(String note){
    return notes.add({
      'note': note,
      'timestamp': Timestamp.now(),
    });
  }

  //read : get notes form database
  Stream<QuerySnapshot> getNotesStream(){
   final notesStream =
      notes.orderBy('timestamp',descending: true).snapshots();

    return notesStream;

   
  
  }

   // update : update notes given in the doc id
    Future<void> updateNote(String docID,String newNote){
      return notes.doc(docID).update({
        'note':newNote,
        'timestamp':Timestamp.now(),
      });
    }

    //delete : delete notes given a doc id
    Future<void> deleteNote(String docID){
      return notes.doc(docID).delete();
    }
}