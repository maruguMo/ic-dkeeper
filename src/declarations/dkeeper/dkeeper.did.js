export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'CreateNote' : IDL.Func([IDL.Text, IDL.Text], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
