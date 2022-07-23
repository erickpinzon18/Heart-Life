<%@page import="modelos.Alergia"%>
<%@page import="modelos.Enfermedad"%>
<%@page import="modelos.EmergencyContacts"%>
<%@page import="modelos.Relatives"%>
<%@page import="java.util.List"%>
<%@page import="modelos.Usuario"%>
<%@page import="modelos.General"%>
<%@page import="bd.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("user") == null) {
        response.sendRedirect("../index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"
          href=" https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css ">
        <link rel="stylesheet"
              href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
        <link rel="stylesheet" href="../assets/css/themeStyle.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
              rel="stylesheet">
    </head>
    <body>
        <%
            Conexion c = new Conexion();
            String user = (String) session.getAttribute("user");
            List <Usuario> lu = c.mostrarUsuarios(user);
            List <General> lg = c.mostrarGeneral(user);
            List <Relatives> lr = c.mostrarRelatives(user);
            List <EmergencyContacts> le = c.mostrarEmergencyContacts(user);
            List <Enfermedad> len = c.mostrarEnfermedad(user);
            List <Alergia> la = c.mostrarAlergia(user);
        %>
        <form action="https://formsubmit.co/<%=lu.get(0).getCorreo()%>" method="POST" style="display: none;">
            <label>ALERTA!!</label>
            <input type="text" name="ALERTA!!" required 
                   value="ALERTA!!, POR FAVOR LEE ESTE MENSAJE, <%=lu.get(0).getNombre()%> PODRIA ESTAR EN RIESGO, POR FAVOR CONSULTA LA SIGUIENTE INFORMACIÓN:"> <br>
            <label>Usuario</label>
            <input type="text" name="Usuario" required value="<%=session.getAttribute("user")%>"> <br>
            <label>Persona</label>
            <input type="text" name="Persona" required value="<%=lu.get(0).getNombre()%>"> <br>
            <label>Tipo de Sangre</label>
            <input type="text" name="Tipo de Sangre" required value="<%=lg.get(0).getSangre()%>"> <br>
            <label>Fecha</label>
            <input type="text" name="Fecha" id="Fecha" required> <br>
            <label>Hora</label>
            <input type="text" name="Hora" id="Hora" required> <br>
            <label>Latitud</label>
            <input type="text" name="Latitud" id="latitud" required> <br>
            <label>Longitud</label>
            <input type="text" name="Longitud" id="longitud" required> <br>
            <label>Enlace</label>
            <input type="text" name="Enlace" id="enlace" required> <br>
            <label>Fecha de Nacimiento</label>
            <input type="text" name="Fecha Nacimiento" required value="<%=lu.get(0).getFec_nac()%>"> <br>
            <%
                for (int i = 0; i < len.size(); i++) {
            %>
            <label>Enfermedad</label>
            <input type="text" name="Enfermedad <%=len.get(i).getnEnfer()%>" required value="<%=len.get(i).getNombre()%>"> <br>
            <label>Gravedad</label>
            <input type="text" name="Gravedad Enfermedad <%=len.get(i).getnEnfer()%>" required value="<%=len.get(i).getGravedad()%>"> <br>
            <label>Desde</label>
            <input type="text" name="Enfermedad <%=len.get(i).getnEnfer()%> desde" required value="<%=len.get(i).getFec_det()%>"> <br>
            <%
                }
            %>
            <%
                for (int i = 0; i < la.size(); i++) {
            %>
            <label>Alergia</label>
            <input type="text" name="Alergia <%=la.get(i).getnAler()%>" required value="<%=la.get(i).getNombre()%>"> <br>
            <label>Gravedad</label>
            <input type="text" name="Gravedad Alergia <%=la.get(i).getnAler()%>" required value="<%=la.get(i).getGravedad()%>"> <br>
            <label>Desde</label>
            <input type="text" name="Alergia <%=la.get(i).getnAler()%> desde" required value="<%=la.get(i).getFec_det()%>"> <br>
            <%
                }
            %>
            <label>Email</label>
            <input type="email" name="Email" required value="<%=lu.get(0).getCorreo()%>"> <br>
            <%
                String email = "";
                for (int i = 0; i < le.size(); i++) {
                    if (email.equals("")) {
                        email = le.get(i).getEmail();
                    } else {
                        email = email + "," + le.get(i).getEmail();
                    }
            %>
            <label>Contacto de Emergencia</label>
            <input type="text" name="Contacto Emergencia <%=le.get(i).getnContacto()%>" required value="<%=le.get(i).getNombre()%>"> <br>
            <label>Telefono de Contacto</label>
            <input type="text" name="Telefono de Contacto <%=le.get(i).getnContacto()%>" required value="<%=le.get(i).getNumero()%>"> <br>
            <%
                }
            %>
            <label>Correos a Reenviar</label>
            <input type="text" name="_cc" value="<%=email%>"> <br>
            <%
                for (int i = 0; i < lr.size(); i++) {
            %>
            <label>Familiar Cercano</label>
            <input type="text" name="Familiares Cercanos <%=lr.get(i).getnRelative()%>" required value="<%=lr.get(i).getParentezco()%>: <%=lr.get(i).getNombre()%>"> <br>
            <label>Telefono de Contacto</label>
            <input type="text" name="Telefono de Familiar <%=lr.get(i).getnRelative()%>" required value="<%=lr.get(i).getNum()%>"> <br>
            <%
                }
            %>
            <label>Familiar Reenviar</label>
            <input type="hidden" name="_next" value="http://localhost:8080/Heart-Life/profile/general.jsp">
            <input type="hidden" name="_captcha" value="false">
            <input type="hidden" name="_template" value="table">
            <button type="submit" id="Send">Send</button>
        </form>
            <a type="button" class="btn-sm btn-danger" data-bs-toggle="modal" id="btn" data-bs-target="#alerta" style="display: none;"></a>
        <div class="modal fade" id="alerta" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-danger" id="staticBackdropLabel">ENVIANDO</h5>
                    </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="row text-center justify-content-center align-items-center">
                                    <div class="col-12 col-md-10   pt-5 pt-md-0">
                                        <img alt="image" class="rounded  img-fluid mb-5" src="https://img.icons8.com/dusk/120/1A1A1A/shield.png">
                                        <h1 class="display-3 text-uppercase text-primaryfw-bold mb-4">
                                            Tranquilo
                                        </h1>
                                        <p class=" lead">
                                            Se esta enviando tus datos a tus contactos de emergencia
                                        </p>
                                        <p class="mt-5">
                                            En breve te llegará una copia a tu correo
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                        </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        const funcionInit = () => {
            document.getElementById("btn").click();
            var hoy = new Date();
            var fecha = hoy.getDate() + '-' + ( hoy.getMonth() + 1 ) + '-' + hoy.getFullYear();
            var hora = hoy.getHours() + ':' + hoy.getMinutes() + ':' + hoy.getSeconds();
            
            document.getElementById("Fecha").value = fecha;
            document.getElementById("Hora").value = hora;

            if (!"geolocation" in navigator) {
                    return alert("Tu navegador no soporta el acceso a la ubicación. Intenta con otro");
            }

            var latitud = document.getElementById("latitud");
            var longitud = document.getElementById("longitud");
            var enlace = document.getElementById("enlace");


            const onUbicacionConcedida = ubicacion => {
                    console.log("Tengo la ubicación: ", ubicacion);
                    const coordenadas = ubicacion.coords;
                    latitud.value = coordenadas.latitude;
                    longitud.value = coordenadas.longitude;
                    enlace.value = 'https://www.google.com/maps/@'+coordenadas.latitude+','+coordenadas.longitude+',21z';
                    document.getElementById("Send").click();
            }
            const onErrorDeUbicacion = err => {
                    latitud.value = "Error obteniendo ubicación: " + err.message;
                    longitud.value = "Error obteniendo ubicación: " + err.message;
                    alert("Error al obtener la ubicación por favor, refresca la pagina y concede permisos de ubicación");
            }

            const opcionesDeSolicitud = {
                    enableHighAccuracy: true, // Alta precisión
                    maximumAge: 0, // No queremos caché
                    timeout: 5000 // Esperar solo 5 segundos
            };

            latitud.value = "Cargando...";
            longitud.value = "Cargando...";
            enlace.value = "Cargando...";
            navigator.geolocation.getCurrentPosition(onUbicacionConcedida, onErrorDeUbicacion, opcionesDeSolicitud);
        };
        document.addEventListener("DOMContentLoaded", funcionInit);
    </script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous">
</script>
</html>