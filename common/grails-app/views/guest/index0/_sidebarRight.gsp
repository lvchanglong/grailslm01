<%@ page import="common.User;" %>

<g:set var="vip" value="${User.get(session.uid)}"/>

<div id="sidebarRight">
	<div class="info-header">
		<div class="glyphicon glyphicon-phone-alt info-header-icon" style="font-size:50px;"></div>
		<div class="info-header-msg" style="font-size:22px;">联系方式</div>
	</div>
	<div class="info-body" style="font-size:18px;">
		<span class="info-body-key" style="font-weight:bold;">Ｑ群:</span>
		<span class="info-body-value">101150634</span>
		<br/>
		<span class="info-body-key" style="font-weight:bold;">ＱＱ:</span>
		<span class="info-body-value">417891235</span>
	</div>

	<g:if test="${vip}">
		<div style="padding:30px 55px 10px 0;">
			<g:form controller="vip" action="feedback" class="ajaxForm">
				<div class="row">
					<div class="col-md-12">
						<g:textArea name="content" required="" class="form-control" style="width:100%;min-height:170px;" placeholder="说点什么吧..."/>
					</div>
					<div class="col-md-12">
						<g:submitButton name="submit" value="发送" class="btn btn-primary" style="width:100%;"/>
					</div>
				</div>
			</g:form>
		</div>
	</g:if>
</div>