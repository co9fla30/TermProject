package rimibakery.dao;

import java.sql.*;
import java.util.ArrayList;

import rimibakery.vo.CartListVO;
import rimibakery.vo.CartVO;
import rimibakery.vo.ItemVO;
import rimibakery.vo.MemberVO;
import rimibakery.vo.UorderVO;


public class RimibakeryDAO {

	private static RimibakeryDAO dao = new RimibakeryDAO();
	private RimibakeryDAO() {}
	
	public static RimibakeryDAO getInstance() {
		// TODO Auto-generated method stub
		return dao;
	}
	
	public Connection connect() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rimibakery","root","1234");
		}catch(Exception e) {
			System.out.print("MDAO:connect"+e);
		}
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement pstmt) {
		
		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.print("pstmt close error" +e);
			}
		}
		if(conn != null) {
			try {
				conn.close();
			}catch(Exception e) {
				System.out.print("conn close error" +e);
			}
		}
		
	}
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		
		if(rs != null) {
			try {
				rs.close();
			}catch(Exception e) {
				System.out.print("rs close error"+e);
			}
		}
		close(conn,pstmt);
	}
	
	public void memberInsert(MemberVO member) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?,?);");
			pstmt.setString(1, member.getUid());
			pstmt.setString(2, member.getUpwd());
			pstmt.setString(3, member.getUname());
			pstmt.setString(4, member.getUtel());
			pstmt.setString(5, member.getUmail());
			pstmt.setString(6, member.getPath());
			pstmt.setString(7, member.getEtcpath());
			pstmt.executeUpdate();
			 
		}catch(Exception e) {
			System.out.print("member join error"+e);
		}finally {
			close(conn,pstmt);
		}
	}

	public boolean MemberLogin(String uid, String upwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		ResultSet rs = null; 
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from member where uid = ? and upwd = ? ;");
			pstmt.setString(1, uid);
			pstmt.setString(2, upwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = true;
			}else {
				result = false; 
			}
			
		}catch(Exception e) {
			System.out.print("login error" + e);
		}
		finally
		{
			close(conn,pstmt,rs);
		}
		return result;
	}

	public void itemInsert(ItemVO item) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into item (itemCategory, itemCateRef, itemName, itemPrice, itemAmount,itemImg, itemInfo) values ( ?,?,?, ?, ?, ?, ?);");
			pstmt.setString(1, item.getItemCategory());
			pstmt.setString(2, item.getItemCateRef());			
			pstmt.setString(3, item.getItemName());
			pstmt.setString(4, item.getItemprice());
			pstmt.setString(5, item.getItemAmount());
			pstmt.setString(6, item.getItemImg());
			pstmt.setString(7, item.getItemInfo());

			pstmt.executeUpdate();
			 
		}catch(Exception e) {
			System.out.print("item insert error"+e);
		}finally {
			close(conn,pstmt);
		}
	}

	public ArrayList<ItemVO> adminItemList() {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ItemVO> List = new ArrayList<ItemVO>();
		ItemVO item = null;
		try {
			pstmt = conn.prepareStatement("select itemNo,itemName,itemCategory,itemPrice,itemAmount,itemDate from item;");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				item = new ItemVO();
				item.setItemNo(rs.getInt("itemNo"));
				item.setItemName(rs.getString("itemName"));
				item.setItemCategory(rs.getString("itemCategory"));
				item.setItemprice(rs.getString("itemPrice"));
				item.setItemAmount(rs.getString("itemAmount"));
				item.setItemDate(rs.getString("itemDate"));
				List.add(item);
			}
		} catch (SQLException e) {
			System.out.print("Admin List error " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return List;
	}

	public ArrayList<ItemVO> adminItemView(String n) {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ItemVO> List = new ArrayList<ItemVO>();
		ItemVO item = null;
		try {
			pstmt = conn.prepareStatement("select itemName, itemcategory, itemPrice, itemAmount,itemImg, itemInfo from item where itemNo = ?;");
			pstmt.setString(1, n);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				item = new ItemVO();
				item.setItemName(rs.getString("itemName"));
				item.setItemCategory(rs.getString("itemCategory"));
				item.setItemprice(rs.getString("itemPrice"));
				item.setItemAmount(rs.getString("itemAmount"));
				item.setItemImg(rs.getString("itemImg"));
				item.setItemInfo(rs.getString("itemInfo"));
				List.add(item);
			}
		} catch (SQLException e) {
			System.out.print("Admin View error " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return List;
	}

	public void itemUpdate(ItemVO item) {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("update item set itemName = ?, itemPrice = ?, itemAmount = ?, itemImg = ?, itemInfo = ? where itemNo = ? ;");
			pstmt.setString(1, item.getItemName());
			pstmt.setString(2, item.getItemprice());
			pstmt.setString(3, item.getItemAmount());
			pstmt.setString(4, item.getItemImg());
			pstmt.setString(5, item.getItemInfo());
			pstmt.setInt(6, item.getItemNo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.print("item Update error " + e);
		} finally {
			close(conn, pstmt);
		}
	}

	public ArrayList<ItemVO> marketList(String c) {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ItemVO> List = new ArrayList<ItemVO>();
		ItemVO item = null;
		try {
			pstmt = conn.prepareStatement("select itemNo, itemName, itemPrice, itemImg from item where itemCategory =? or itemCateRef = ?;");
			pstmt.setString(1, c);
			pstmt.setString(2, c);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				item = new ItemVO();
				item.setItemNo(rs.getInt("itemNo"));
				item.setItemName(rs.getString("itemName"));
				item.setItemprice(rs.getString("itemPrice"));
				item.setItemImg(rs.getString("itemImg"));
				List.add(item);
			}
		} catch (SQLException e) {
			System.out.print("Market List error " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return List;
	}

	public ArrayList<ItemVO> marketView(String n) {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ItemVO> List = new ArrayList<ItemVO>();
		ItemVO item = null;
		try {
			pstmt = conn.prepareStatement("select itemNo, itemName, itemcategory, itemPrice, itemAmount,itemImg, itemInfo from item where itemNo = ?;");
			pstmt.setString(1, n);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				item = new ItemVO();
				item.setItemNo(rs.getInt("itemNo"));
				item.setItemName(rs.getString("itemName"));
				item.setItemCategory(rs.getString("itemCategory"));
				item.setItemprice(rs.getString("itemPrice"));
				item.setItemAmount(rs.getString("itemAmount"));
				item.setItemImg(rs.getString("itemImg"));
				item.setItemInfo(rs.getString("itemInfo"));
				List.add(item);
			}
		} catch (SQLException e) {
			System.out.print("Admin View error " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return List;
	}

	public void cartAdd(CartVO cart) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into cart (itemNo, uid, CartAmount) values ( ?,?,?);");
			pstmt.setString(1, cart.getItemNo());
			pstmt.setString(2, cart.getUid());			
			pstmt.setString(3, cart.getCartAmount());

			pstmt.executeUpdate();
			 
		}catch(Exception e) {
			System.out.print("cart add error"+e);
		}finally {
			close(conn,pstmt);
		}
	}



	public ArrayList<CartListVO> cartList(String uid) {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<CartListVO> List = new ArrayList<CartListVO>();
		CartListVO cart = null;
		try {
			pstmt = conn.prepareStatement("select c.uid, cartNo, cartAmount, i.itemNo, itemInfo , itemName, itemPrice, itemAmount, itemImg from item i ,cart c where i.itemNo = c.itemNo and c.uid = ?;");
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				cart = new CartListVO();
				cart.setUid(rs.getString("uid"));
				cart.setCartNo(rs.getInt("cartNo"));
				cart.setCartAmount(rs.getString("cartAmount"));
				cart.setItemNo(rs.getString("itemNo"));
				cart.setItemInfo(rs.getString("itemInfo"));
				cart.setItemName(rs.getString("itemName"));
				cart.setItemprice(rs.getString("itemPrice"));
				cart.setItemAmount(rs.getString("itemAmount"));
				cart.setItemImg(rs.getString("itemImg"));
				List.add(cart);
			}
		} catch (SQLException e) {
			System.out.print("Cart List error " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return List;
	}

	public void cartDelete(String cartNo) {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement("delete from cart where cartNo=?;");
			pstmt.setString(1, cartNo);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.print("Cart Delete error " + e);
		} finally {
			close(conn, pstmt);
		}
	}

	public void order(UorderVO order) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement(" insert into uorder(uId, orderRec, userAddr1, userAddr2, userAddr3, orderTel, sumPrice,itemNo,cartAmount)\r\n"
					+ " select ?, ?, ?, ?, ?, ?, ?, itemNo, cartAmount from cart  where uid=?");
			pstmt.setString(1, order.getUid());
			pstmt.setString(2, order.getOrderRec());			
			pstmt.setString(3, order.getUserAddr1());
			pstmt.setString(4, order.getUserAddr2());
			pstmt.setString(5, order.getUserAddr3());
			pstmt.setString(6, order.getOrderTel());
			pstmt.setInt(7, order.getSumPrice());
			pstmt.setString(8, order.getUid());

			pstmt.executeUpdate();
			 
		}catch(Exception e) {
			System.out.print("order error "+e);
		}finally {
			close(conn,pstmt);
		}
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("delete from cart where uid=?;");
			pstmt.setString(1, order.getUid());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.print("Order Cart Delete error " + e);
		} finally {
			close(conn, pstmt);
		}
		
		
	}

	public ArrayList<UorderVO> orderList(String uid) {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<UorderVO> List = new ArrayList<UorderVO>();
		UorderVO order = null;
		try {
			pstmt = conn.prepareStatement("select * from uorder where uid = ? ;");
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				order = new UorderVO();
				
				order.setOrderId(rs.getInt("orderId"));
				order.setUid(rs.getString("uid"));
				order.setOrderRec(rs.getString("orderRec"));
				order.setUserAddr1(rs.getString("userAddr1"));
				order.setUserAddr2(rs.getString("userAddr2"));
				order.setUserAddr3(rs.getString("userAddr3"));
				order.setOrderTel(rs.getString("orderTel"));
				order.setSumPrice(rs.getInt("sumPrice"));
				order.setOrderDate(rs.getString("orderDate"));
				order.setItemNo(rs.getString("itemNo"));
				order.setCartAmount(rs.getString("cartAmount"));
				List.add(order);
			}
		} catch (SQLException e) {
			System.out.print("Order List error " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return List;
	}

	public ArrayList<UorderVO> adminOrderList() {
		// TODO Auto-generated method stub
		Connection conn = connect();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<UorderVO> List = new ArrayList<UorderVO>();
		UorderVO order = null;
		try {
			pstmt = conn.prepareStatement("select * from uorder ;");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				order = new UorderVO();
				
				order.setOrderId(rs.getInt("orderId"));
				order.setUid(rs.getString("uid"));
				order.setOrderRec(rs.getString("orderRec"));
				order.setUserAddr1(rs.getString("userAddr1"));
				order.setUserAddr2(rs.getString("userAddr2"));
				order.setUserAddr3(rs.getString("userAddr3"));
				order.setOrderTel(rs.getString("orderTel"));
				order.setSumPrice(rs.getInt("sumPrice"));
				order.setOrderDate(rs.getString("orderDate"));
				order.setItemNo(rs.getString("itemNo"));
				order.setCartAmount(rs.getString("cartAmount"));
				List.add(order);
			}
		} catch (SQLException e) {
			System.out.print("Order List error " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		
		return List;
	}
	
	
	
	
}
