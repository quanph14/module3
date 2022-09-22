use quanlysinhvien;
select address, count(StudentID) AS 'Số lượng học viên' from student group by Address;
select s.StudentID, S.StudentName, AVG(Mark) from Student S join Mark M on S.StudentID = M.StudentId group by S.StudentID, S.StudentName;
SELECT S.StudentID,S.StudentName, AVG(Mark) from Student S join Mark M on S.StudentID = M.StudentId GROUP BY S.StudentID, S.StudentName;
SELECT S.StudentID,S.StudentName, AVG(Mark) FROM Student S join Mark M on S.StudentID = M.StudentID GROUP BY S.StudentID, S.StudentName HAVING AVG(Mark) > 15;
SELECT S.StudentID, S.StudentName, AVG(Mark) FROM Student S join Mark M on S.StudentID = M.StudentID GROUP BY S.StudentID, S.StudentName;
SELECT S.StudentID, S.StudentName, AVG(Mark) FROM Student S join Mark M on S.StudentID = M.StudentID GROUP BY S.StudentID, S.StudentName HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentID);