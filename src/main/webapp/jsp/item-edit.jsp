<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="${pageContext.request.contextPath}/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="itemeEditForm" action="${pageContext.request}/admin/product/updateProduct.do" class="itemForm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="pid"/>
	 <table cellpadding="5">

	        <tr>
	            <td>商品标题:</td>
	            <td><input class="easyui-textbox" type="text" name="pname" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>商品价格:</td>
	              <td><input class="easyui-textbox" type="text" name="price" data-options="required:true" style="width: 180px;"></input>
	            </td>
	        </tr>
	        <tr>
	            <td>库存数量:</td>
	             <td><input class="easyui-textbox" type="text" name="pnumber" data-options="required:true" style="width: 180px;"></input></td>
	        </tr>
	        <tr>
	            <td>是否热门:</td>
	            <td>
	              <select id="is_hot" name="is_hot" style="width:200px;">
	               <option value='1'>是</option>
	               <option value='0'>否</option>
			</select>
	            </td>
	        </tr>
	        <tr>
	            <td>商品图片:</td>
	            <td>
	            <input  name="upload" type="file" />
	            </td>
				<td>
					<input   value="提交" type="submit" />
				</td>
	        </tr>
	    </table>
	    <input type="hidden" name="itemParams"/>
	    <input type="hidden" name="itemParamId"/>
	</form>
</div>
<script type="text/javascript">
	var itemEditEditor ;
	$(function(){
		//实例化编辑器
		itemEditEditor = E3.createEditor("#itemeEditForm [name=pdesc]");
	});
	
	function submitForm(){
		if(!$('#itemeEditForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		$("#itemeEditForm [name=price]").val(eval($("#itemeEditForm [name=priceView]").val()) * 1000);
		itemEditEditor.sync();
		
		var paramJson = [];
		$("#itemeEditForm .params li").each(function(i,e){
			var trs = $(e).find("tr");
			var group = trs.eq(0).text();
			var ps = [];
			for(var i = 1;i<trs.length;i++){
				var tr = trs.eq(i);
				ps.push({
					"k" : $.trim(tr.find("td").eq(0).find("span").text()),
					"v" : $.trim(tr.find("input").val())
				});
			}
			paramJson.push({
				"group" : group,
				"params": ps
			});
		});
		paramJson = JSON.stringify(paramJson);
		
		$("#itemeEditForm [name=itemParams]").val(paramJson);
		
		<%--$.post("${pageContext.request.contextPath}/admin/product/updateProduct.do",$("#itemeEditForm").serialize(), function(data){--%>
		<%--	if(data.status == 200){--%>
		// 		$.messager.alert('提示','修改商品成功!','info',function(){
		// 			$("#itemEditWindow").window('close');
		// 			$("#itemList").datagrid("reload");
		// 		});
		<%--	}--%>
		<%--});--%>
		$.post("${pageContext.request.contextPath}/admin/product/updateProduct.do", $("#itemeEditForm").serialize() ,function(){
			$.messager.alert('提示','修改商品成功!','info',function(){
				$("#itemEditWindow").window('close');
				$("#itemList").datagrid("reload");
			});
		});
	}
</script>
