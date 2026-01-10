package com.alibaba.fastjson.parser;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public enum Feature {
    AutoCloseSource,
    AllowComment,
    AllowUnQuotedFieldNames,
    AllowSingleQuotes,
    InternFieldNames,
    AllowISO8601DateFormat,
    AllowArbitraryCommas,
    UseBigDecimal,
    IgnoreNotMatch,
    SortFeidFastMatch,
    DisableASM,
    DisableCircularReferenceDetect,
    InitStringFieldAsEmpty,
    SupportArrayToBean,
    OrderedField,
    DisableSpecialKeyDetect,
    UseObjectArray,
    SupportNonPublicField,
    IgnoreAutoType,
    DisableFieldSmartMatch,
    SupportAutoType,
    NonStringKeyAsString,
    CustomMapDeserializer,
    ErrorOnEnumNotMatch,
    SafeMode,
    TrimStringFieldValue,
    UseNativeJavaObject;

    public final int mask = 1 << ordinal();

    Feature() {
    }

    public static int config(int i6, Feature feature, boolean z7) {
        return z7 ? i6 | feature.mask : i6 & (~feature.mask);
    }

    public static boolean isEnabled(int i6, Feature feature) {
        return (i6 & feature.mask) != 0;
    }

    public static int of(Feature[] featureArr) {
        if (featureArr == null) {
            return 0;
        }
        int i6 = 0;
        for (Feature feature : featureArr) {
            i6 |= feature.mask;
        }
        return i6;
    }

    public final int getMask() {
        return this.mask;
    }
}
