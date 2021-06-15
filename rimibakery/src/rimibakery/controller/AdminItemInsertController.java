package rimibakery.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import rimibakery.service.ItemService;
import rimibakery.vo.ItemVO;

public class AdminItemInsertController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8"); 

		 // 파일 업로드를 하기 위해서 cos.jar 추가 및 객체 생성
        MultipartRequest multi = null;
        // 업로드 될 파일의 최대 사이즈 (10메가)
        int sizeLimit = 1000 * 1024 * 1024;
 
        // 파일이 업로드될 실제 tomcat 폴더의 경로 (WebContent 기준)
        String savePath = "C:\\dev\\eclipse-workspase\\rimibakery\\WebContent\\upload";
        
        multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

        
        
        //String filename = multi.getFilesystemName("itemImg");
       // File file = multi.getFile("itemImg");
		String itemName = multi.getParameter("itemName");
		String itemprice= multi.getParameter("itemPrice");
		String itemAmount = multi.getParameter("itemAmount");
		String itemInfo = multi.getParameter("itemInfo");
		String itemImg = multi.getFilesystemName("itemImg");
		String itemDate = multi.getParameter("itemDate");
		String itemCategory = multi.getParameter("itemCategory");
		String itemCateRef = multi.getParameter("itemCateRef");
		String itemImgPath = savePath + "/" + itemImg;
		
		ItemVO item = new ItemVO();
		item.setItemName(itemName);
		item.setItemprice(itemprice);
		item.setItemAmount(itemAmount);
		item.setItemInfo(itemInfo);
		item.setItemImg(itemImg);
		item.setItemImgPath(itemImgPath);
		item.setItemDate(itemDate);
		item.setItemCategory(itemCategory);
		item.setItemCateRef(itemCateRef);
		
		//service
		ItemService service = ItemService.getInstance();
		service.itemInsert(item);
		
		request.setAttribute("itemName", itemName);
		HttpUtil.forward(request,response,"/result/itemInsertResult.jsp");
	}

}
