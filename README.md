## Andmetüübid
1. **Arvulised** - int, decimal(5,2), kus 2 numbri peale koma, bigint, smallint, real
2. **Teksti/sümboolid** - VARCHAR(255), CHAR(10), TEXT
Näited: telefoninumber, nimi, nimetus, isikukood, aadress
3. **Kuupäeva** - DATE, TIME, date/time
4. **loogilised** - bit, bool, boolean, true/false

## Piirangud - ограничение
1. Primary key - primaarne võti - первичный ключ
определяет уникальное значение для каждой строки / määrab unikaalne väärtus iga rea kohta
2. UNIQUE
3. NOT FULL - ei luba tühja väärtust
4. FOREIGN KEY - võõrvõti / väline võti - вторичный ключ
определяет набор значений из другой таблицы
5.  CHECK - CHECK(naine, mees) - определяет набор значений
