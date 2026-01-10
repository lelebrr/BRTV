package com.lzy.okgo.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.lzy.okgo.cache.CacheEntity;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CacheManager extends BaseDao<CacheEntity<?>> {

    /* compiled from: MyApplication */
    public static class CacheManagerHolder {
        private static final CacheManager instance = new CacheManager();

        private CacheManagerHolder() {
        }
    }

    public static CacheManager getInstance() {
        return CacheManagerHolder.instance;
    }

    public boolean clear() {
        return deleteAll();
    }

    public CacheEntity<?> get(String str) {
        if (str == null) {
            return null;
        }
        List<CacheEntity<?>> listQuery = query("key=?", new String[]{str});
        if (listQuery.size() > 0) {
            return listQuery.get(0);
        }
        return null;
    }

    public List<CacheEntity<?>> getAll() {
        return queryAll();
    }

    @Override // com.lzy.okgo.db.BaseDao
    public String getTableName() {
        return "cache";
    }

    public boolean remove(String str) {
        if (str == null) {
            return false;
        }
        return delete("key=?", new String[]{str});
    }

    public <T> CacheEntity<T> replace(String str, CacheEntity<T> cacheEntity) {
        cacheEntity.setKey(str);
        replace((CacheManager) cacheEntity);
        return cacheEntity;
    }

    private CacheManager() {
        super(new DBHelper());
    }

    @Override // com.lzy.okgo.db.BaseDao
    public ContentValues getContentValues(CacheEntity<?> cacheEntity) {
        return CacheEntity.getContentValues(cacheEntity);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.lzy.okgo.db.BaseDao
    public CacheEntity<?> parseCursorToBean(Cursor cursor) {
        return CacheEntity.parseCursorToBean(cursor);
    }

    public <T> CacheEntity<T> get(String str, Class<T> cls) {
        return (CacheEntity<T>) get(str);
    }

    @Override // com.lzy.okgo.db.BaseDao
    public void unInit() {
    }
}
