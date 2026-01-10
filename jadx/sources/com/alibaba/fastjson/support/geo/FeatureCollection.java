package com.alibaba.fastjson.support.geo;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.alibaba.fastjson.annotation.JSONType;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
@JSONType(orders = {SessionDescription.ATTR_TYPE, "bbox", "coordinates"}, typeName = "FeatureCollection")
/* loaded from: classes.dex */
public class FeatureCollection extends Geometry {
    private List<Feature> features;

    public FeatureCollection() {
        super("FeatureCollection");
        this.features = new ArrayList();
    }

    public List<Feature> getFeatures() {
        return this.features;
    }
}
