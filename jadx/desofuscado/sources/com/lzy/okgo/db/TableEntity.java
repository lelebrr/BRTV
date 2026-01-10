package com.lzy.okgo.db;

import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TableEntity {
    private List<ColumnEntity> list = new ArrayList();
    public String tableName;

    public TableEntity(String str) {
        this.tableName = str;
    }

    public TableEntity addColumn(ColumnEntity columnEntity) {
        this.list.add(columnEntity);
        return this;
    }

    public String buildTableString() {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(this.tableName);
        sb.append('(');
        for (ColumnEntity columnEntity : this.list) {
            if (columnEntity.compositePrimaryKey != null) {
                sb.append("PRIMARY KEY (");
                for (String str : columnEntity.compositePrimaryKey) {
                    sb.append(str);
                    sb.append(",");
                }
                sb.deleteCharAt(sb.length() - 1);
                sb.append(")");
            } else {
                sb.append(columnEntity.columnName);
                sb.append(" ");
                sb.append(columnEntity.columnType);
                if (columnEntity.isNotNull) {
                    sb.append(" NOT NULL");
                }
                if (columnEntity.isPrimary) {
                    sb.append(" PRIMARY KEY");
                }
                if (columnEntity.isAutoincrement) {
                    sb.append(" AUTOINCREMENT");
                }
                sb.append(",");
            }
        }
        if (sb.toString().endsWith(",")) {
            sb.deleteCharAt(sb.length() - 1);
        }
        sb.append(')');
        return sb.toString();
    }

    public int getColumnCount() {
        return this.list.size();
    }

    public int getColumnIndex(String str) {
        int columnCount = getColumnCount();
        for (int i6 = 0; i6 < columnCount; i6++) {
            if (this.list.get(i6).columnName.equals(str)) {
                return i6;
            }
        }
        return -1;
    }

    public String getColumnName(int i6) {
        return this.list.get(i6).columnName;
    }
}
