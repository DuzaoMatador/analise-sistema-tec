<!DOCTYPE html>
<?php 
$id=$_POST['id'];
require_once('conectar.php');
$sql="SELECT * FROM aluno WHERE idAluno=".$id;
$resultado=mysqli_query($conexao,$sql);
$dadosAluno=mysqli_fetch_array($resultado);
?>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<style type="text/css">
		.corpo{
min-width: 480px;
border: 1px solid #000000;
width: 200px;
overflow: hidden;

justify-content: center;
			  }
			.botao{
	background-color: darkred;
    box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0.12) 0px 1px 1px 0px, 
                rgb(84, 105, 212) 0px 0px 0px 1px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(60, 66, 87, 0.08) 0px 2px 5px 0px;
    color: #fff;
    font-weight: 600;
    cursor: pointer;

}
		}

	</style>
<div class="corpo"><form action="updatealunos.php" method="post">
	<label>
		Nome do Aluno:<input type="text" name="naluno" value='<?php echo $dadosAluno['nomeAluno'];?>' maxlength="255" size="50">
	</label><br/>
	<label>
		Telefone:<input type="text" name="telealuno" maxlength="25" size="15" value='<?php echo $dadosAluno['nomeAluno'];?>' required>
	</label><br/>
	<label>
		Foto:<input type="text" name="ftaluno" value='<?php echo $dadosAluno['fotoAluno'];?>' maxlength="255" size="50">
	</label><br/>
	
	
	<input class="botao" type="submit" value="Alterar">
	</div>	
</form>
</body>
</html>