
%    Description:
% 
%    function generates LDPC parity bits for specified LDPC generator
%    matrix
%    
%    [paritybits] = genLDPCparity(codeword,genMatrix)
%
%    Inputs:
%
%       1. codeword  - code bits
%       2. genMatrix - parity generation matrix
%
%    Outputs:
%
%       1. paritybits - generated parity bits
%
%  *************************************************************************************/
function [paritybits] = genLDPCparity(codeword,genMatrix)
%generate parity bits
%nZindex is a matrix representing non-zero elements indices in generator matrix
nZindex = genMatrix.nZindex;
[r c] = size(nZindex);

paritybits = [];
for k1 = 1:r,
    len = nZindex(k1,1);
    nz = nZindex(k1,2:(len+1));
    paritybits = [paritybits mod(sum(codeword(nz)),2)];
end

return
