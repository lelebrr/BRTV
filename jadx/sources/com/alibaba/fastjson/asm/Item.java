package com.alibaba.fastjson.asm;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class Item {
    int hashCode;
    int index;
    int intVal;
    long longVal;
    Item next;
    String strVal1;
    String strVal2;
    String strVal3;
    int type;

    public Item() {
    }

    public boolean isEqualTo(Item item) {
        int i6 = this.type;
        if (i6 != 1) {
            if (i6 != 15) {
                if (i6 == 12) {
                    return item.strVal1.equals(this.strVal1) && item.strVal2.equals(this.strVal2);
                }
                if (i6 != 13) {
                    switch (i6) {
                        case 3:
                        case 4:
                            return item.intVal == this.intVal;
                        case 5:
                        case 6:
                            break;
                        case 7:
                        case 8:
                            break;
                        default:
                            return item.strVal1.equals(this.strVal1) && item.strVal2.equals(this.strVal2) && item.strVal3.equals(this.strVal3);
                    }
                }
            }
            return item.longVal == this.longVal;
        }
        return item.strVal1.equals(this.strVal1);
    }

    public void set(int i6, String str, String str2, String str3) {
        this.type = i6;
        this.strVal1 = str;
        this.strVal2 = str2;
        this.strVal3 = str3;
        if (i6 != 1 && i6 != 7 && i6 != 8) {
            if (i6 == 12) {
                this.hashCode = ((str2.hashCode() * str.hashCode()) + i6) & Integer.MAX_VALUE;
                return;
            } else if (i6 != 13) {
                this.hashCode = ((str3.hashCode() * str2.hashCode() * str.hashCode()) + i6) & Integer.MAX_VALUE;
                return;
            }
        }
        this.hashCode = (str.hashCode() + i6) & Integer.MAX_VALUE;
    }

    public Item(int i6, Item item) {
        this.index = i6;
        this.type = item.type;
        this.intVal = item.intVal;
        this.longVal = item.longVal;
        this.strVal1 = item.strVal1;
        this.strVal2 = item.strVal2;
        this.strVal3 = item.strVal3;
        this.hashCode = item.hashCode;
    }

    public void set(int i6) {
        this.type = 3;
        this.intVal = i6;
        this.hashCode = (3 + i6) & Integer.MAX_VALUE;
    }
}
