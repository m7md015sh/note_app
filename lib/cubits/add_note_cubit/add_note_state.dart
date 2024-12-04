abstract class AddNoteState{

}

class AddNoteStateInitial extends AddNoteState{}
class AddNoteStateSuccess extends AddNoteState{}
class AddNoteStateLoading extends AddNoteState{}
class AddNoteStateFailure extends AddNoteState{
  final String errorMessage;

  AddNoteStateFailure(this.errorMessage);
}