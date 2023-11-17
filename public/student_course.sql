create view student_course(studentid, firstname, lastname, courseid, coursename) as
SELECT student.studentid,
       student.firstname,
       student.lastname,
       student.courseid,
       course.coursename
FROM student
         LEFT JOIN course ON student.courseid = course.courseid;

alter table student_course
    owner to postgres;

