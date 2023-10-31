package kr.or.ddit.index;

import java.util.ArrayList;
import java.util.List;

public class IndexRepository {
   private List<IndexVO> indexList = new ArrayList<IndexVO>();

   private static IndexRepository instance = null;

   public static IndexRepository getInstance() {
      if (instance == null) {
         instance = new IndexRepository();
      }
      return instance;
   }

   private IndexRepository() {
      // 챕터정보들
      String[] chapters = { 
            "CH01", "CH02", "CH03", "CH04", "CH05", "CH06", "CH07", 
            "CH08", "CH10", "CH11", "CH12", "CH13", "CH14", "CH17" };
      
      // 각 챕터의 제목들
      String[] titles = { 
            "CH01. JSP 개요", "CH02. 스크립트 태그", "CH03. 디렉티브 태그", "CH04. 액션태그", 
            "CH05. 내장객체", "CH06. 폼 태그", "CH07. 파일업로드", "CH08. 유효성검사", 
            "CH10. 시큐리티", "CH11. 예외처리", "CH12. 필터", "CH13. 세션", "CH14. 쿠키",
            "CH17. 태그 라이브러리" };
      
      // 각 챕터의 이동 URL
      String[] chapterMoveUrls = {
            "/welcome.jsp", "/ch02/scripting.jsp", "/ch03/", "/ch04/", "/ch05/",
            "/ch06/", "/ch07/", "/ch08/", "/ch10/", "/ch11/", "/ch12/", "/ch13/", "/ch14/",
            "/ch17/" };
      
      // 각 챕터의 소스 파일명들
      String[][] sourceArr = { 
    		{ // chap01
    			"welcome.jsp"
    		},
            { // chap02
    			"scripting.jsp", 
    			"declaration01.jsp", "declaration02.jsp", "declaration03.jsp", 
    			"scriptlet01.jsp", "scriptlet02.jsp",
    			"expression01.jsp", "expression02.jsp",
    			"ch02_test.jsp"
	    	},
            { "" },                            // chap03
            { "" },                            // chap04
            { "" },                            // chap05
            { "" },                            // chap06
            { "" },                            // chap07
            { "" },                            // chap08
            { "" },                            // chap10
            { "" },                            // chap11
            { "" },                            // chap12
            { "" },                            // chap13
            { "" },                            // chap14
            { "" }                             // chap17
      };
      
      // 최종 indexList에 추가
      for (int i = 0; i < chapters.length; i++) {
         IndexVO indexVO = new IndexVO();
         
         indexVO.setChapter(chapters[i]);
         indexVO.setTitle(titles[i]);
         indexVO.setChapterMoveUrl(chapterMoveUrls[i]);

         List<String> sourceList = new ArrayList<String>();
         for (int j = 0; j < sourceArr[i].length; j++) {
            sourceList.add(sourceArr[i][j]);
         }
         indexVO.setSourceList(sourceList);
         indexList.add(indexVO);
      }
   }

   public List<IndexVO> getIndexList() {
      return indexList;
   }
}