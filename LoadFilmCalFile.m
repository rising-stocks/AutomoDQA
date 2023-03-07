function data = LoadFilmCalFile(FilmCalFile)

fid = fopen(FilmCalFile,'r');

line = fgets(fid);
% fprintf('%s',line);
line = fgets(fid);
% fprintf('%s',line);

data = [];
lineNumber = 1;    

line = fgets(fid);
A = sscanf(line,'%f\t%f\t%f');
data(lineNumber,:) = A(2:3,1)';

lineNumber = lineNumber + 1;

while ~feof(fid)
    line = fgets(fid);
    A = sscanf(line,'%f\t%f\t%f');
    if ~isempty(A)
        data(lineNumber,:) = A(2:3,1)';
        
        lineNumber = lineNumber + 1;
    end
end

fclose(fid);