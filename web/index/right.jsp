<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>

<div class="right_content">

    <s:if test="#session.indent!=null">
        <div class="cart">
            <div class="title">
                <a href="cart.action"><img src="images/cart.gif" alt="购物车" title="购物车"/></a>
            </div>
            <div class="home_cart_content">
                <span>共<s:property value="#session.indent.amount"/>本 | 总价: $<s:property
                        value="#session.indent.total"/></span>
            </div>
            <s:if test="#session.indent!=null">
                <a href="cart.action" class="view_cart">查看购物车</a>
            </s:if>
        </div>
    </s:if>


    <div class="title"><span class="title_icon"><img src="images/bullet3.gif"/></span>眼镜店简介</div>
    <div class="about">
        <p>
            <img src="images/about.gif" class="right"/>
            本眼镜店拥有30多年历史，一直以来，
            秉持着"用专业的心，做专业的事"理念，
            不断引进国际级视光高科技产品，以及和国家级重点高校合作，
            进行专业人才培训，并积极参与国家质量部门检测，落实高质量的商品分析，
            真正创造企业、政府高校和视光产业，三方面纵横一体的企业。
        </p>
    </div>


    <div class="right_box">

        <div class="title"><span class="title_icon"><img src="images/bullet4.gif"/></span>优惠促销</div>

        <s:iterator var="special" value="saleList">
            <div class="new_prod_box"><a href="detail.action?bookid=${id}">${name}</a>
                <div class="new_prod_bg">
                    <span class="new_icon"><img src="images/promo_icon.gif"/></span>
                    <a href="detail.action?bookid=${id}"><img src="../${cover}" class="thumb" border="0"/></a>
                </div>
            </div>
        </s:iterator>

    </div>


    <div class="right_box">

        <div class="title"><span class="title_icon"><img src="images/bullet5.gif"/></span>眼镜分类</div>
        <ul class="list">
            <s:iterator var="category" value="categoryList">
                <li><a href="category.action?category=<s:property value="id"/>"><s:property value="name"/></a></li>
            </s:iterator>
        </ul>

    </div>
</div>

</body>
</html>