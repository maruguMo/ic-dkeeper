import type { Principal } from '@dfinity/principal';
export interface Note { 'title' : string, 'content' : string }
export interface _SERVICE {
  'CreateNote' : (arg_0: string, arg_1: string) => Promise<undefined>,
  'readNotes' : () => Promise<Array<Note>>,
}
