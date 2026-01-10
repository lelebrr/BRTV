package org.bitspark.android.beans;

import com.nmmedit.protect.NativeUtil;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes.dex */
public class BrandBean implements Serializable {
    private String image;
    private String image_logo;
    private String name;
    private List<Integer> tags;

    static {
        NativeUtil.classesInit0(22);
    }

    public native boolean equals(Object obj);

    public native String getImage();

    public native String getImage_logo();

    public native String getName();

    public native List<Integer> getTags();

    public native void setImage(String str);

    public native void setImage_logo(String str);

    public native void setName(String str);

    public native void setTags(List<Integer> list);

    public native String toString();
}
