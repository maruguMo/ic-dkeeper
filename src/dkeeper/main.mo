import List "mo:base/List";
import Array "mo:base/Array";
import Debug "mo:base/Debug";
actor DKeeper{
    public type Note =
    {
        title:Text;
        content: Text;
    };
    var notes:  List.List<Note> = List.nil<Note>();
    
    public func CreateNote(titleText: Text, contentText:Text){
        let newNote: Note ={
            title=titleText;
            content=contentText;
        };
        notes:=List.push(newNote, notes);
        Debug.print(debug_show(notes));
    };
    
    public query func readNotes(): async [Note]{
        // var arr : [Note] = []; 
        let  arr = List.toArray<Note>(notes);
        return arr;
    };
}
