<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/vista/etiquetas/struts-html.tld" prefix="html" %>
<style>
.HipervinculoAdmon{
color:#000000;
text-decoration:none;
}

.HipervinculoAdmon:hover{
color:#006666;
text-decoration:underline;
}
</style>
<script language="javascript" type="text/javascript">
<!--
function EliminarHotel(strHotelName){
return confirm("¿Desea eliminar el estado '" + strHotelName + "'?")
}
-->
</script>
<br>
<font size='5'><fmt:message key="formaListadoHoteles.titulo" /></font>
<table cellpadding="0" cellspacing="0" width="60%" border="0">
    <tr>
        <td colspan="4" style="padding-top:25px; padding-bottom:25px;">
            <a href="solicitarRegistroHotel.do" class="HipervinculoAdmon">Agregar nuevo hotel...</a>
        </td>
    </tr>
    <tr>
        <td colspan="4">
           <html:errors />
        </td>
    </tr>
    <tr bgcolor="#CCCCCC">
     <td><b><fmt:message key="formaListadoHoteles.etiqueta.nombre" /></b></td>
     <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoHoteles.etiqueta.descripcion" /></b></td>
     <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoHoteles.etiqueta.precio" /></b></td>
     <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoHoteles.etiqueta.horario" /></b></td>
     <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoHoteles.etiqueta.telefono" /></b></td>
     <td style="border-right-style:solid; border-left-style:solid; border-width:1px; border-color:#000000;"><b><fmt:message key="formaListadoHoteles.etiqueta.direccion" /></b></td>

 <td colspan="2"><b><fmt:message key="formaListadoHoteles.etiqueta.administracion" /></b></td>
    </tr>
    <c:forEach var="hotel" items="${formaListadoHoteles.hoteles}">
        <tr>
            <td align="left" width="20%"><c:out value="${hotel.nombre}"/></td>
            <td align="left" width="60%"><c:out value="${hotel.descripcion}"/></td>
    <td align="left" width="60%"><c:out value="${hotel.poblacion}"/></td>
    <td align="left" width="60%"><c:out value="${hotel.coordenadas}"/></td>
    <td align="left" width="60%"><c:out value="${hotel.estado}"/></td>
    <td align="left" width="60%"><c:out value="${hotel.pais}"/></td>
    <td align="left" width="60%"><c:out value="${hotel.moneda}"/></td>

            <td align="left" width="20%">
                <a href='solicitarModificarHotel.do?id=<c:out value="${hotel.id}"/>'
         class="HipervinculoAdmon">
                    <fmt:message key="formaListadoHoteles.etiqueta.modificar" />
                </a>
            </td>
            <td>
                <a href='procesarEliminarHotel.do?id=<c:out value="${hotel.id}"/>'
         onClick="javascript: return EliminarHotel('<c:out value="${hotel.nombre}"/>')"
         class="HipervinculoAdmon">
                    <fmt:message key="formaListadoHoteles.etiqueta.eliminar" />
                </a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4" align="right" style="padding-top:25px;"><b>Total:</b> ${formaListadoHoteles.contador}</td>
    </tr>
</table>
