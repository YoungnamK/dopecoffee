<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="./../common/common.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>커피상품 등록</title>
<script type="text/javascript" src="${contextPath}/js/coffee.js"></script>
<link rel="stylesheet" href="${contextPath}/css/coffee.css">
<style type="text/css">
   

</style>
</head>
<body>

   <section>
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="block">
                  <h2 class="subtitle wow fadeInDown animated"
                     data-wow-duration="500ms" data-wow-delay=".3s"
                     style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">상품등록</h2>
                  <p class="subtitle-des wow fadeInDown animated"
                     data-wow-duration="500ms" data-wow-delay=".5s"
                     style="visibility: visible; animation-duration: 500ms; animation-delay: 0.5s; animation-name: fadeInDown;">
                     상품정보들 작성해주세요.</p>
                  <div class="contact-form">
                     <c:set var="contextPath" value="<%=contextPath%>"
                        scope="application" />
                     <form id="contact-form" method="post" action="${contextPath}/cfInsert.cf" role="form" enctype="multipart/form-data">
                        <input type="hidden" value="${sessionScope.loginfo_seller.sell_Email}" name="c_seller_email">
                        <label>커피 타입</label>
                        <div class="form-group">
                           <select class="form-control" name="c_type" id="c_type">
                              <option class="form-control" value="0">타입</option>
                              <option class="form-control" value="1">싱글오리진</option>
                              <option class="form-control" value="2">블렌딩</option>
                              <option class="form-control" value="3">캡슐</option>
                           </select> <span class="valid_check" id="err_c_type"></span>
                        </div>
                        <label>상품명</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="text" placeholder="상품명을 작성해 주세요." class="form-control"
                              name="c_name" id="c_name" >
                           <span class="valid_check" id="err_c_name"></span>
                        </div>
                        <label>상품 가격</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="number" placeholder="상품가격을 작성해 주세요." class="form-control"
                              name="c_price" id="c_price" > <span
                              class="valid_check" id="err_c_price"></span>
                        </div>
                        <label>원산지</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="text" placeholder="원산지를 작성해 주세요" class="form-control"
                              name="c_origin" id="c_origin" >
                           <span class="valid_check" id="err_c_origin"></span>
                        </div>
                        <label>무게(g)</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="number" placeholder="무게(g)를 작성해 주세요" class="form-control"
                              name="c_weight" id="c_weight" > <span
                              class="valid_check" id="err_c_weight"></span>
                        </div>
                        <label>로스팅의 여부</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="text" placeholder="로스팅의 여부를 작성해 주세요" class="form-control"
                              name="c_roasting" id="c_roasting" > <span
                              class="valid_check" id="err_c_roasting"></span>
                        </div>
                        <label>블렌딩</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="text"  placeholder="블렌딩 종류를 작성해 주세요" class="form-control"
                              name="c_blending" id="c_blending" >
                           <span class="valid_check" id="err_c_blending"></span>
                        </div>
                        <label>분쇄 타입</label>
                        <div class="form-group">
                           <select class="form-control" name="c_crushing_status"
                              id="c_crushing_status">
                              <option class="form-control" value="-">--분쇄 타입--</option>
                              <option class="form-control" value="original">원두(분쇄안함)</option>
                              <option class="form-control" value="handdrip">핸드드립용</option>
                              <option class="form-control" value="coffeeport">커피포트용</option>
                              <option class="form-control" value="franchpress">프렌치프레스용</option>
                              <option class="form-control" value="dutchcoffee">더치커피용</option>
                           </select> <span class="valid_check" id="err_c_crushing_status"></span>
                        </div>
                        <label>재고 수량</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="number" placeholder="재고 수량을 작성해 주세요" class="form-control"
                              name="c_qty" id="c_qty" > <span
                              class="valid_check" id="err_c_qty"></span>
                        </div>
                        <label>메인 이미지</label>
                        <div class="form-group wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="file" placeholder="메인 이미지" class="form-control"
                              name="cf_image" id="cf_image">
                        </div>


                        <div id="submit" class="wow fadeInDown animated"
                           data-wow-duration="500ms" data-wow-delay="0.3s"
                           style="visibility: visible; animation-duration: 500ms; animation-delay: 0.3s; animation-name: fadeInDown;">
                           <input type="submit" id="contact-submit"
                              class="btn btn-default btn-send" value="등록"
                              onclick="return insertcheck();">
                        </div>

                     </form>
                  </div>
               </div>
            </div>

         </div>

      </div>
   </section>


   <!-- ------------------------------------- [모달 section]--------------------------------------- -->
   <div class="container">

      <!-- Modal -->
      <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog modal-sm">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 id="modal-title" class="modal-title" style="font-size: 35px"></h4>
               </div>
               <div class="modal-body">
                  <p id="modal-body" style="font-size: 13px"></p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal"
                     style="font-size: 13px">닫기</button>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>