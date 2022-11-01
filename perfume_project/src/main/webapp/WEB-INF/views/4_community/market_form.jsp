<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="dark">
<head>
   <title>오드비 - Eau de Vie</title>
    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="pxdraft" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Crikon – Multipurpose Template" />
    <meta name="description" content="Crikon – Multipurpose Template" />
    <!-- title -->
    <title>오드비 - Eau de Vie</title>
    <!-- font : Google Noto Serif Korean -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png" >
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <style>
        *{
            font-family: 'Noto Serif KR', serif;
        }
        
        .col-md-12 {
        	padding-top : 18px !important;
        }
        
        
    </style>

</head>

<body>

 	<!-- header -->
	<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
	
     <!-- Main -->
     <main>
         <!-- Page Title -->
         <section class="py-3 bg-gray-100" style="height: 200px;">
             <!-- style 추가-->
             <div class="container" style="padding-top: 35px;">
                 <div class="row align-items-center">
                     <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                     <div class="col-lg-12 my-2">
                         <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">커뮤니티</h1>
                     </div>
                     <div class="col-lg-12 my-2" style="width: 100%">
                         <!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
                         <ol class="breadcrumb dark-link m-0 small justify-content-center"
                             style="text-align: center">
                             <li class="breadcrumb-item"><a class="text-nowrap" href="story_list.do" style="color: #9397AD;"><i
                                         class="bi bi-home"></i>향수이야기</a></li>
                             <li class="breadcrumb-item"><a class="text-nowrap" href="market_list.do" style="color: #e63946;"><i
                                         class="bi bi-home"></i>중고거래</a></li>
                         </ol>
                     </div>
                 </div>
             </div>
         </section>
         <!-- End Page Title -->
          <!-- Section -->
          <div class="section m-auto" style="width: 800px;">
              <div class="card mt-5">
                  <div class="card-header py-3">
                      <h6 class="mb-0 h4">중고거래 글쓰기</h6>
                  </div>
                  <div class="card-body">
                      <div class="row gy-4">
                      
                      <form action="insertMarket.do"  method='post' enctype="multipart/form-data">
                          <div class="col-12 mb-3 input-group" style="width: 100%">
                          <div type="hidden" name="m_article_id" value="${m_article_id}"></div>
						   <input type="hidden" name="user_id" value="${sessionScope.user_id}"></input>
                             <!-- 셀렉트 -->
                               <select class="form-select" name="m_head" style="flex:none; width: 20%;">
                                   <option value="판매하기">판매하기</option>
                                   <option value="구매하기">구매하기</option>
                               </select>
                               <!-- Search input -->
                               <input class="form-control" type="text" name="m_title" placeholder="제목" required="">
                           </div>
                           
                           <!-- 내용 -->
                           <div class="col-12 col-md-12">
	                           <label class="form-label" for="market_Form3" style="display:block">
	                                 	상품명
	                           </label>
                               <input class="form-control" id="market_Form2" type="text" name="m_product" placeholder="상품명" required="">
                           </div>
                           <div class="col-12 col-md-12">
                              <label class="form-label" for="market_Form3" style="display:block">
                                 	실구매가
                              </label>
                              <input class="form-control" id="market_Form3" type="text" name="m_pastprice" placeholder="구매한 가격을 입력해주세요" style="display:inline; width: 230px;" required="">
                              <span> 원</span>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form4" style="display:block">
                                   	희망판매가
                                </label>
                                <input class="form-control" id="market_Form4" type="text" name="m_saleprice" placeholder="희망 판매가격을 입력해주세요" required="" style="display:inline; width:230px;">
                                <span> 원</span>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form5">
                                   	구매일시
                               </label>
                               <input class="form-control" id="market_Form5" type="date" name="m_purdate" style="width: 230px;" required="">
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form6">
                                   	유통기한
                               </label>
                               <input class="form-control" id="market_Form6" type="date" name="m_expdate" style="width: 230px;" required="">
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form7">
                                   	구매처
                               </label>
                               <input class="form-control" id="market_Form7" type="text" name="m_place" placeholder="구매처를 입력해주세요" required="" >
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form8">
                                  	 브랜드
                               </label>
                               <input class="form-control" id="market_Form8" type="text" name="m_brand" placeholder="브랜드를 입력해주세요" required="">
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form9" style="display:block">
                                  	 용량
                               </label>
                               <input class="form-control" id="market_Form9" type="text" name="m_size" placeholder="용량을 입력해주세요" style="display:inline; width:230px" required="">
                                <span> ml</span>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form10">
                                   	상품상태(사용감)
                               </label>
                               <div class="btn-group-toggle" data-bs-toggle="buttons">
                                   <input type="radio" class="btn-check" name="m_use" id="condition1" value="미개봉" required="">
                                   <label class="btn btn-outline-dark" for="condition1">미개봉</label>
                                   <input type="radio" class="btn-check" name="m_use" id="condition2" value="거의 새것" required="">
                                   <label class="btn btn-outline-dark" for="condition2">거의 새것</label>
                                   <input type="radio" class="btn-check" name="m_use" id="condition3" value="사용감있음" required="">
                                   <label class="btn btn-outline-dark" for="condition3">사용감있음</label>
                               </div>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form11" >
                                   	거래방식
                               </label><br/>
                               <input type="radio" name="m_saleway" value="택배" required="">택배 &nbsp;&nbsp;
                               <input type="radio" name="m_saleway" value="직거래" required="">직거래 &nbsp;&nbsp;
                               <input type="radio" name="m_saleway" value="기타" required="">기타
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form12">
                                   	상세설명
                               </label>
                               <textarea class="form-control" id="market_Form12" type="text" name="m_content" placeholder="판매하실 상품에 대해 알려주세요"></textarea>
                           </div>
                           <div class="col-12 col-lg-12">
                                <label class="form-label" >거래상태 선택</label><br/>
                                <input type="radio" name="m_status" value="희망" required="">희망 &nbsp;&nbsp;
                                <input type="radio" name="m_status" value="완료" required="">완료
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_Form13">
                                   	사진첨부
                               </label>
                               <input class="form-control" id="market_Form13" name="file" type="file" >
                           </div>
                           <div class="col-12 pt-3 text-end">
                              <!-- Button -->
                              <button class="btn btn-primary" type="submit">올리기</button>
                           	  <button class="btn btn-primary" type="button" onclick="location.href='market_list.do'">취소</button>
                           </div>
                       </form>
                         
                      </div>
                      
                      
                  </div>
              </div>
           </div>
           <!-- End Section -->
       </main>
       <!-- End Main -->
        
     <!-- Footer -->
	 <jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
    
</body>
</html>