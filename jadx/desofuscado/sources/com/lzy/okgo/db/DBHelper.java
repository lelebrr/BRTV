package com.lzy.okgo.db;

import a.e;
import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.Progress;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class DBHelper extends SQLiteOpenHelper {
    private static final String DB_CACHE_NAME = "okgo.db";
    private static final int DB_CACHE_VERSION = 1;
    static final String TABLE_CACHE = "cache";
    static final String TABLE_COOKIE = "cookie";
    static final String TABLE_DOWNLOAD = "download";
    static final String TABLE_UPLOAD = "upload";
    static final Lock lock = new ReentrantLock();
    private TableEntity cacheTableEntity;
    private TableEntity cookieTableEntity;
    private TableEntity downloadTableEntity;
    private TableEntity uploadTableEntity;

    public DBHelper() {
        this(OkGo.getInstance().getContext());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(this.cacheTableEntity.buildTableString());
        sQLiteDatabase.execSQL(this.cookieTableEntity.buildTableString());
        sQLiteDatabase.execSQL(this.downloadTableEntity.buildTableString());
        sQLiteDatabase.execSQL(this.uploadTableEntity.buildTableString());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i6, int i10) throws SQLException {
        onUpgrade(sQLiteDatabase, i6, i10);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i6, int i10) throws SQLException {
        if (DBUtils.isNeedUpgradeTable(sQLiteDatabase, this.cacheTableEntity)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache");
        }
        if (DBUtils.isNeedUpgradeTable(sQLiteDatabase, this.cookieTableEntity)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cookie");
        }
        if (DBUtils.isNeedUpgradeTable(sQLiteDatabase, this.downloadTableEntity)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS download");
        }
        if (DBUtils.isNeedUpgradeTable(sQLiteDatabase, this.uploadTableEntity)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS upload");
        }
        onCreate(sQLiteDatabase);
    }

    public DBHelper(Context context) {
        super(context, DB_CACHE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.cacheTableEntity = new TableEntity(TABLE_CACHE);
        this.cookieTableEntity = new TableEntity("cookie");
        this.downloadTableEntity = new TableEntity(TABLE_DOWNLOAD);
        this.uploadTableEntity = new TableEntity(TABLE_UPLOAD);
        e.j("head", "BLOB", e.j(CacheEntity.LOCAL_EXPIRE, "INTEGER", this.cacheTableEntity.addColumn(new ColumnEntity(CacheEntity.KEY, "VARCHAR", true, true)))).addColumn(new ColumnEntity("data", "BLOB"));
        e.j("cookie", "BLOB", e.j(SerializableCookie.DOMAIN, "VARCHAR", e.j(SerializableCookie.NAME, "VARCHAR", e.j(SerializableCookie.HOST, "VARCHAR", this.cookieTableEntity)))).addColumn(new ColumnEntity(SerializableCookie.HOST, SerializableCookie.NAME, SerializableCookie.DOMAIN));
        e.j(Progress.EXTRA2, "BLOB", e.j(Progress.EXTRA1, "BLOB", e.j(Progress.REQUEST, "BLOB", e.j(Progress.DATE, "INTEGER", e.j(Progress.PRIORITY, "INTEGER", e.j(Progress.STATUS, "INTEGER", e.j(Progress.CURRENT_SIZE, "INTEGER", e.j(Progress.TOTAL_SIZE, "INTEGER", e.j(Progress.FRACTION, "VARCHAR", e.j(Progress.FILE_NAME, "VARCHAR", e.j(Progress.FILE_PATH, "VARCHAR", e.j(Progress.FOLDER, "VARCHAR", e.j(Progress.URL, "VARCHAR", this.downloadTableEntity.addColumn(new ColumnEntity(Progress.TAG, "VARCHAR", true, true))))))))))))))).addColumn(new ColumnEntity(Progress.EXTRA3, "BLOB"));
        e.j(Progress.EXTRA2, "BLOB", e.j(Progress.EXTRA1, "BLOB", e.j(Progress.REQUEST, "BLOB", e.j(Progress.DATE, "INTEGER", e.j(Progress.PRIORITY, "INTEGER", e.j(Progress.STATUS, "INTEGER", e.j(Progress.CURRENT_SIZE, "INTEGER", e.j(Progress.TOTAL_SIZE, "INTEGER", e.j(Progress.FRACTION, "VARCHAR", e.j(Progress.FILE_NAME, "VARCHAR", e.j(Progress.FILE_PATH, "VARCHAR", e.j(Progress.FOLDER, "VARCHAR", e.j(Progress.URL, "VARCHAR", this.uploadTableEntity.addColumn(new ColumnEntity(Progress.TAG, "VARCHAR", true, true))))))))))))))).addColumn(new ColumnEntity(Progress.EXTRA3, "BLOB"));
    }
}
