package com.youth.banner.config;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class IndicatorConfig {
    private int currentPosition;
    private int indicatorSize;
    private Margins margins;
    private int gravity = 1;
    private int indicatorSpace = BannerConfig.INDICATOR_SPACE;
    private int normalWidth = BannerConfig.INDICATOR_NORMAL_WIDTH;
    private int selectedWidth = BannerConfig.INDICATOR_SELECTED_WIDTH;
    private int normalColor = BannerConfig.INDICATOR_NORMAL_COLOR;
    private int selectedColor = BannerConfig.INDICATOR_SELECTED_COLOR;
    private int radius = BannerConfig.INDICATOR_RADIUS;
    private int height = BannerConfig.INDICATOR_HEIGHT;
    private boolean attachToBanner = true;

    /* compiled from: MyApplication */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Direction {
        public static final int CENTER = 1;
        public static final int LEFT = 0;
        public static final int RIGHT = 2;
    }

    /* compiled from: MyApplication */
    public static class Margins {
        public int bottomMargin;
        public int leftMargin;
        public int rightMargin;
        public int topMargin;

        public Margins() {
            this(BannerConfig.INDICATOR_MARGIN);
        }

        public Margins(int i6) {
            this(i6, i6, i6, i6);
        }

        public Margins(int i6, int i10, int i11, int i12) {
            this.leftMargin = i6;
            this.topMargin = i10;
            this.rightMargin = i11;
            this.bottomMargin = i12;
        }
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public int getGravity() {
        return this.gravity;
    }

    public int getHeight() {
        return this.height;
    }

    public int getIndicatorSize() {
        return this.indicatorSize;
    }

    public int getIndicatorSpace() {
        return this.indicatorSpace;
    }

    public Margins getMargins() {
        if (this.margins == null) {
            setMargins(new Margins());
        }
        return this.margins;
    }

    public int getNormalColor() {
        return this.normalColor;
    }

    public int getNormalWidth() {
        return this.normalWidth;
    }

    public int getRadius() {
        return this.radius;
    }

    public int getSelectedColor() {
        return this.selectedColor;
    }

    public int getSelectedWidth() {
        return this.selectedWidth;
    }

    public boolean isAttachToBanner() {
        return this.attachToBanner;
    }

    public IndicatorConfig setAttachToBanner(boolean z7) {
        this.attachToBanner = z7;
        return this;
    }

    public IndicatorConfig setCurrentPosition(int i6) {
        this.currentPosition = i6;
        return this;
    }

    public IndicatorConfig setGravity(int i6) {
        this.gravity = i6;
        return this;
    }

    public IndicatorConfig setHeight(int i6) {
        this.height = i6;
        return this;
    }

    public IndicatorConfig setIndicatorSize(int i6) {
        this.indicatorSize = i6;
        return this;
    }

    public IndicatorConfig setIndicatorSpace(int i6) {
        this.indicatorSpace = i6;
        return this;
    }

    public IndicatorConfig setMargins(Margins margins) {
        this.margins = margins;
        return this;
    }

    public IndicatorConfig setNormalColor(int i6) {
        this.normalColor = i6;
        return this;
    }

    public IndicatorConfig setNormalWidth(int i6) {
        this.normalWidth = i6;
        return this;
    }

    public IndicatorConfig setRadius(int i6) {
        this.radius = i6;
        return this;
    }

    public IndicatorConfig setSelectedColor(int i6) {
        this.selectedColor = i6;
        return this;
    }

    public IndicatorConfig setSelectedWidth(int i6) {
        this.selectedWidth = i6;
        return this;
    }
}
