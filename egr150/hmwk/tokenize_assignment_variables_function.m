function [i_o] = tokenize_assignment_variables_function()

try
    clear in;
    clear inputs;
    clear out;
    clear outputs;
    clear i_o;
catch
end
in.name = 'var_vect';
in.value = ''' me =   [0 1 , 56, 111, 0]  ''';
inputs(1) = in;

i_o.ins = inputs;

i_o.outs = cell(0);
out.name = 'left_side';
out.value = 'me';
outputs(1) = out;
out.name = 'right_side';
out.value = '[0 1 , 56, 111, 0]';
outputs(2) = out;


i_o.outs = outputs;

end

