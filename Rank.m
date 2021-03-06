% In God We Trust
% My name is Reza Sadeghi
% My emails are: sadeghi.2@wright.edu; reza@knoesis.org
% Data: 7/7/2017

% Ranking dat -> 'ascending':   Array:[1 4 5] -> Ranking:[1 2 3] -> provided by MATLAB([~,~,Ranking]=unique(Array))
% Ranking dat -> 'descending': Array:[1 4 5] -> Ranking:[3 2 1] -> not provide

function Ranking=Rank (Array)
Size=size(Array);
Number=max(Size);
[Sorted, Index]=sort(Array,'descend');
Ranking=zeros(Size);
Ranking(Index(1))=1;
for i=2:Number
    if(Sorted(i)<Sorted(i-1))
        Ranking(Index(i))=Ranking(Index(i-1))+1;
    else
        Ranking(Index(i))=Ranking(Index(i-1));
    end
end
end