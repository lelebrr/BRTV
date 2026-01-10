package com.lzy.okgo.db;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ColumnEntity {
    public String columnName;
    public String columnType;
    public String[] compositePrimaryKey;
    public boolean isAutoincrement;
    public boolean isNotNull;
    public boolean isPrimary;

    public ColumnEntity(String... strArr) {
        this.compositePrimaryKey = strArr;
    }

    public ColumnEntity(String str, String str2) {
        this(str, str2, false, false, false);
    }

    public ColumnEntity(String str, String str2, boolean z7, boolean z10) {
        this(str, str2, z7, z10, false);
    }

    public ColumnEntity(String str, String str2, boolean z7, boolean z10, boolean z11) {
        this.columnName = str;
        this.columnType = str2;
        this.isPrimary = z7;
        this.isNotNull = z10;
        this.isAutoincrement = z11;
    }
}
