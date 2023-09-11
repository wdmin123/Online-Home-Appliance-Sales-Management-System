package service;

import dao.GoodsDao;
import model.Goods;
import model.Page;



import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class GoodsService {
    private GoodsDao gDao=new GoodsDao();
    public List<Map<String,Object>> getGoodsList(int recommendType) {
        List<Map<String,Object>> list=null;
        try {
            list=gDao.getGoodsList(recommendType);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Map<String,Object>> getScrollGood() {
        List<Map<String,Object>> list=null;
        try {
            list=gDao.getScrollGood();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Goods> selectGoodsByTypeID(int typeID, int pageNumber, int pageSize)
    {
        List<Goods> list=null;
        try {
            list=gDao.selectGoodsByTypeID(typeID,pageNumber,pageSize);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    //根据ID获取商品，并对获取到商品进行分页
    public Page selectPageByTypeID(int typeID,int pageNumber)
    {
        Page p=new Page();
        p.setPageNumber(pageNumber);
        int totalCount=0;
        try {
            totalCount=gDao.getCountOfGoodsByTypeID(typeID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        p.SetPageSizeAndTotalCount(8,totalCount);

        List list=null;
        try {
            list=gDao.selectGoodsByTypeID(typeID,pageNumber,8);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        p.setList(list);
        return p;
    }
    public Page getGoodsRecommendPage(int type,int pageNumber) {
        Page p = new Page();
        p.setPageNumber(pageNumber);
        int totalCount = 0;
        try {
            totalCount = gDao.getRecommendCountOfGoodsByTypeID(type);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.SetPageSizeAndTotalCount(8, totalCount);
        List list=null;
        try {
            list = gDao.selectGoodsbyRecommend(type, pageNumber, 8);
            for(Goods g : (List<Goods>)list) {
                g.setScroll(gDao.isScroll(g));
                g.setHot(gDao.isHot(g));
                g.setNew(gDao.isNew(g));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.setList(list);
        return p;
    }
    //根据id来查找商品
    public Goods getGoodsById(int id) {
        Goods g=null;
        try {
            g = gDao.getGoodsById(id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return g;
    }
    public Page getSearchGoodsPage(String keyword, int pageNumber) {
        Page p = new Page();
        p.setPageNumber(pageNumber);
        int totalCount = 0;
        try {
            totalCount = gDao.getSearchCount(keyword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.SetPageSizeAndTotalCount(8, totalCount);
        List list=null;
        try {
            list = gDao.selectSearchGoods(keyword,pageNumber,8);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        p.setList(list);
        return p;
    }
    //加入条幅推荐
    public void addRecommend(int id,int type) {
        try {
            gDao.addRecommend(id, type);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    //删除条幅推荐
    public void removeRecommend(int id,int type) {
        try {
            gDao.removeRecommend(id, type);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    //增加商品
    public void insert(Goods goods) {
        try {
            gDao.insert(goods);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    //修改商品信息（更新）
    public void update(Goods goods) {
        try {
            gDao.update(goods);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    //删除商品
    public void delete(int id) {
        try {
            gDao.delete(id);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
