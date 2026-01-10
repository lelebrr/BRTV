package com.alibaba.fastjson.support.geo;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.alibaba.fastjson.annotation.JSONType;

/* compiled from: MyApplication */
@JSONType(orders = {SessionDescription.ATTR_TYPE, "bbox", "coordinates"}, typeName = "Polygon")
/* loaded from: classes.dex */
public class Polygon extends Geometry {
    private double[][][] coordinates;

    public Polygon() {
        super("Polygon");
    }

    public double[][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][] dArr) {
        this.coordinates = dArr;
    }
}
