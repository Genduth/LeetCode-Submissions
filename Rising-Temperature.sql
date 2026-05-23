1select w1.Id
2  from Weather w1
3  join Weather w2
4    on w1.recordDate = w2.recordDate + 1
5 where w1.recordDate > w2.recordDate and w1.temperature > w2.temperature; 