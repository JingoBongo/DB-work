### Query 4
```SQL
SELECT * FROM discipline WHERE LEN(Disciplina) > 20
```
<img src="query4.png"/>

### Query 19
```SQL
SELECT DISTINCT Nume_Profesor, Prenume_Profesor FROM studenti_reusita sr
	INNER JOIN profesori p on p.Id_Profesor = sr.Id_Profesor
	INNER JOIN studenti s on s.Id_Student = sr.Id_Student
WHERE nota < 5 AND Nume_Student = 'Cosovanu'
```
<img src="query19.png"/>

### Query 25
```SQL
SELECT Cod_Grupa FROM studenti_reusita sr
	INNER JOIN grupe g on g.Id_Grupa = sr.Id_Grupa
GROUP BY Cod_Grupa
HAVING count(DISTINCT Id_Student) > 24
```
<img src="query25.png"/>

### Query 35
```SQL
SELECT DISTINCT Disciplina, AVG(cast(Nota as float)) Media FROM studenti_reusita sr
	INNER JOIN discipline d on d.Id_Disciplina = sr.Id_Disciplina
GROUP BY Disciplina
HAVING AVG(cast(Nota as float)) > 7
ORDER BY Disciplina DESC
```
<img src="query35.png"/>
