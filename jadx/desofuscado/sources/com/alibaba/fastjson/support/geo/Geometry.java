package com.alibaba.fastjson.support.geo;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.alibaba.fastjson.annotation.JSONType;

/* compiled from: MyApplication */
@JSONType(seeAlso = {GeometryCollection.class, LineString.class, MultiLineString.class, Point.class, MultiPoint.class, Polygon.class, MultiPolygon.class, Feature.class, FeatureCollection.class}, typeKey = SessionDescription.ATTR_TYPE)
/* loaded from: classes.dex */
public abstract class Geometry {
    private double[] bbox;
    private final String type;

    public Geometry(String str) {
        this.type = str;
    }

    public double[] getBbox() {
        return this.bbox;
    }

    public String getType() {
        return this.type;
    }

    public void setBbox(double[] dArr) {
        this.bbox = dArr;
    }
}
