<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="ui" uri="http://www.jahia.org/tags/uiComponentsLib" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="query" uri="http://www.jahia.org/tags/queryLib" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="s" uri="http://www.jahia.org/tags/search" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<template:addResources type="css" resources="bootstrapComponents.css"/>


<H1> Liste contacts </H1>

<jcr:sql var="result" sql="SELECT * FROM [jnt:contact]"/>

<br/>
<br/>
nodes size : ${result.nodes.size}
<br/>

<br/>
<table class="table-bordered">
   <tr>
     <th>Nom</th>
     <th>Prénom</th>
      <th>Adresse</th>
   </tr>  
   <c:forEach items="${result.nodes}" var="userMessage">
      <jcr:nodeProperty node="${userMessage}" name="lastname" var="nom"/>
      <jcr:nodeProperty node="${userMessage}" name="firstname" var="prenom"/>
      <jcr:nodeProperty node="${userMessage}" name="address" var="adresse"/>
      <tr>
        <td >
           ${nom.string}
        </td>
        <td>
          ${prenom.string}
        </td>  
        <td>
          ${adresse.string}
        </td>  
      </tr>  
    </c:forEach>             
</table> 