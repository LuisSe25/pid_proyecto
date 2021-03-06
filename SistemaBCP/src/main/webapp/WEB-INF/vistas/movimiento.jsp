<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<link rel="stylesheet" href="css/noti.css"/>

<title>Intranet Colegio - Jorge Jacinto Gutarra</title>
</head>
<body>
<jsp:include page="intranetCabecera.jsp" />
       
<div class="container" style="width: 60%; margin-top: 5%">
<h4>Tranferencia BCP</h4>
<h4>Bienvenido Sr(a): ${sessionScope.objCliente.nombre}  ${sessionScope.objCliente.apellido}</h4>                

	<form action="tranferencia" id="id_form" method="post" onSubmit="return validarfor();"> 
		
			<div class="form-group">
				<label class="control-label" for="id_cuenta_ori">Cuenta Origen</label>
				<select id="id_cuenta_ori" name="cuentaOrigen" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
		    
			<div class="form-group">
				<label class="control-label" for="id_monto">Monto</label>
				<input class="form-control" type="text" id="id_monto" name="monto" placeholder="Ingrese el monto">
			</div>
			
			<div class="form-group">
				<label class="control-label" for="id_cuenta_des">Cuenta Destino</label>
				<input class="form-control" type="text" id="id_cuenta_des" name="cuentaDestino" placeholder="Ingrese el nombre">
			</div>
			
		    
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Transferir</button>
			</div>
	

	</form>




</div>
<script type="text/javascript">
function validarfor(){
    
    var monto = document.getElementById("id_monto").value; 
    
    var expr = /[A-Za-z �]+/;
    
    
    if ( expr.test(monto) ){                                                            //COMPRUEBA MAIL
        alert("Error: El monto " + monto + " es letra, el monto debe ser numero.");
        return false;
    }
    
    return true;
    }
</script>
<script type="text/javascript">
$.getJSON("cargaCuenta", {}, function(data){
	$.each(data, function(index,item){
		$("#id_cuenta_ori").append("<option value="+item.numero +">"+ item.numero +"</option>");
	});
});


</script>



<div class="container" >
 <div class="col-md-12" align="center"> 

 </div>
</div>    		
</body>
</html>