What type of field would you use to store currency information in a MySQL database?

- Given the numerous field types above, which type to choose for various input formats can be a difficult, subjective decision. But there are some fairly common conventions across the tech world, and it can be helpful to know them before your interview.

One of the most common — and counterintuitive — is currency storage. Since we tend to write prices and transactions as decimals — for example, 19.95 — you might be tempted to use a FLOAT or DOUBLE field for currency storage. But for more applications, the most commonly-used field type is actually INTEGER.

Why is that? Because storing currency values as US Dollars in a field type like FLOAT can lead to rounding errors and other compatibility problems down the line.

As a solution, most currencies are stored in databases as INTEGER fields representing cents and not dollars. So, an item that costs $19.95 would be represented in a database as costing 1995 cents.

- Aggregate functions

SUM() — used to calculate the sum of various rows of data to find meaningful patterns and trends.
AVG() — used to find averages over large quantities of data.
COUNT() — used to count rows; particularly useful for aggregating quantity information.
MAX() and MIN() — used to find maximum and minimum values within a large set of data.

- UNION vs UNION ALL

- Full outer in mysql 

```sql
SELECT
	*
FROM 
	students
LEFT JOIN
	advisors ON students.advisor_id = advisors.advisor_id
UNION ALL
SELECT
	*
FROM
	students
RIGHT JOIN
	advisors ON students.advisor_id = advisors.advisor_id
WHERE
	students.advisor_id IS NULL;
```

- insert, delete and update

- comparison operators

<table class="table table-responsive table-striped" style="text-align: center; max-width: 400px; margin: 0 auto;">
  <thead>
    <tr>
      <th style="text-align: center;">Operator</th>
      <th style="text-align: center;">Meaning</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code class=" language-sql"><span class="token operator">=</span></code></td>
      <td>Equal to</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">&lt;&gt;</span></code> or <code class=" language-sql"><span class="token operator">!=</span></code></td>
      <td>Not equal to</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">&gt;</span></code></td>
      <td>Greater than</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">&gt;=</span></code></td>
      <td>Greater than or equal to</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">&lt;</span></code></td>
      <td>Less than</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">&lt;</span></code></td>
      <td>Less than or equal to</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">&gt;</span></code></td>
      <td>Greater than</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">IN</span><span class="token punctuation">(</span><span class="token punctuation">)</span></code></td>
      <td>Matches a value within another list</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">NOT</span></code></td>
      <td>The opposite of a given condition</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">BETWEEN</span><span class="token punctuation">(</span><span class="token punctuation">)</span></code></td>
      <td>Within a specified range (inclusive)</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">IS</span> <span class="token boolean">NULL</span></code></td>
      <td>Checks to see whether a given value is <code class=" language-sql"><span class="token boolean">NULL</span></code> (generally, <code class=" language-sql"><span class="token operator">=</span><span class="token boolean">NULL</span></code> does not work for this)</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">IS</span> <span class="token operator">NOT</span> <span class="token boolean">NULL</span></code></td>
      <td>Checks to see whether a given value is not <code class=" language-sql"><span class="token boolean">NULL</span></code> (generally, <code class=" language-sql"><span class="token operator">=</span><span class="token operator">!</span><span class="token boolean">NULL</span></code> does not work for this)</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token operator">LIKE</span></code></td>
      <td>Checks to see whether a given value matches a simple pattern using the <code class=" language-sql"><span class="token string">'%'</span></code> and <code class=" language-sql"><span class="token string">'_'</span></code> symbols</td>
    </tr>
    <tr>
      <td><code class=" language-sql"><span class="token keyword">EXISTS</span></code></td>
      <td>Returns <code class=" language-sql"><span class="token boolean">TRUE</span></code> if query matches at least one row in set</td>
    </tr>
  </tbody>
</table>

- Pagination with mysql

```sql
SELECT * FROM tbl order by id asc LIMIT 5,10;  # Retrieve 
-- rows 6-15

SELECT id,name,description FROM tablename LIMIT 1000,25
-- both are same
SELECT id,name,description FROM tablename LIMIT 25 OFFSET 1000
```

- better way of pagination - https://use-the-index-luke.com/no-offset