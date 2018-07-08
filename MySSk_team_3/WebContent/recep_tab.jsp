<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
select option[value=" "] { /* value  Scheduleval */
    background-color:  white;
}

select option[value=" Schedule "] { /* value  Scheduleval */
    background-color: red;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    text-align: left;
    padding: 16px;
}

tr:nth-child(even) {
    background-color: #f2f2f2
}
</style>
	<title>hello</title>
</head>
<body>
	<form>
		<textarea name="history" rows="10" cols="100" placeholder="Add history here"></textarea><br><br>
<table>
	<tr>
		<th>Days and slots</th>
		<th>DAY 1</th>
		<th>DAY 2</th>
		<th>DAY 3</th>
		<th>DAY 4</th>
		<th>DAY 5</th>
	</tr>

	<tr>
		<th>Slot 1</th>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
	</tr>


	<tr>
		<th>Slot 2</th>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
	</tr>

	<tr>
		<th>Slot 3</th>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
		<td><select>
			<option> </option>
			<option>  Schedule </option>
		</select></td>
	</tr>
	</table>
	<br>
	<input type="submit" name="submit" value="Submit"><br>
	<br>
	<input type="reset" name="reset">
</form>
</head>
<body>

</body>
</html>