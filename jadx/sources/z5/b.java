package z5;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import com.bumptech.glide.d;
import com.google.android.material.badge.BadgeState$State;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final BadgeState$State f11665a;

    /* renamed from: b, reason: collision with root package name */
    public final BadgeState$State f11666b = new BadgeState$State();

    /* renamed from: c, reason: collision with root package name */
    public final float f11667c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final float f11668e;

    public b(Context context, BadgeState$State badgeState$State) throws XmlPullParserException, Resources.NotFoundException, IOException {
        AttributeSet attributeSet;
        int styleAttribute;
        int next;
        BadgeState$State badgeState$State2 = badgeState$State == null ? new BadgeState$State() : badgeState$State;
        int i6 = badgeState$State2.f4622a;
        if (i6 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i6);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                }
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
                attributeSet = attributeSetAsAttributeSet;
            } catch (IOException | XmlPullParserException e5) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i6));
                notFoundException.initCause(e5);
                throw notFoundException;
            }
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayJ = a0.j(context, attributeSet, x5.a.f11022c, R.attr.badgeStyle, styleAttribute == 0 ? R.style.Widget_MaterialComponents_Badge : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.f11667c = typedArrayJ.getDimensionPixelSize(2, resources.getDimensionPixelSize(R.dimen.mtrl_badge_radius));
        this.f11668e = typedArrayJ.getDimensionPixelSize(4, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding));
        this.d = typedArrayJ.getDimensionPixelSize(5, resources.getDimensionPixelSize(R.dimen.mtrl_badge_with_text_radius));
        BadgeState$State badgeState$State3 = this.f11666b;
        int i10 = badgeState$State2.d;
        badgeState$State3.d = i10 == -2 ? 255 : i10;
        CharSequence charSequence = badgeState$State2.f4627h;
        badgeState$State3.f4627h = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        BadgeState$State badgeState$State4 = this.f11666b;
        int i11 = badgeState$State2.f4628i;
        badgeState$State4.f4628i = i11 == 0 ? R.plurals.mtrl_badge_content_description : i11;
        int i12 = badgeState$State2.f4629j;
        badgeState$State4.f4629j = i12 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i12;
        Boolean bool = badgeState$State2.f4631l;
        badgeState$State4.f4631l = Boolean.valueOf(bool == null || bool.booleanValue());
        BadgeState$State badgeState$State5 = this.f11666b;
        int i13 = badgeState$State2.f;
        badgeState$State5.f = i13 == -2 ? typedArrayJ.getInt(8, 4) : i13;
        int i14 = badgeState$State2.f4625e;
        if (i14 != -2) {
            this.f11666b.f4625e = i14;
        } else if (typedArrayJ.hasValue(9)) {
            this.f11666b.f4625e = typedArrayJ.getInt(9, 0);
        } else {
            this.f11666b.f4625e = -1;
        }
        BadgeState$State badgeState$State6 = this.f11666b;
        Integer num = badgeState$State2.f4623b;
        badgeState$State6.f4623b = Integer.valueOf(num == null ? d.k(context, typedArrayJ, 0).getDefaultColor() : num.intValue());
        Integer num2 = badgeState$State2.f4624c;
        if (num2 != null) {
            this.f11666b.f4624c = num2;
        } else if (typedArrayJ.hasValue(3)) {
            this.f11666b.f4624c = Integer.valueOf(d.k(context, typedArrayJ, 3).getDefaultColor());
        } else {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.style.TextAppearance_MaterialComponents_Badge, x5.a.Z);
            typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
            ColorStateList colorStateListK = d.k(context, typedArrayObtainStyledAttributes, 3);
            d.k(context, typedArrayObtainStyledAttributes, 4);
            d.k(context, typedArrayObtainStyledAttributes, 5);
            typedArrayObtainStyledAttributes.getInt(2, 0);
            typedArrayObtainStyledAttributes.getInt(1, 1);
            int i15 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
            typedArrayObtainStyledAttributes.getResourceId(i15, 0);
            typedArrayObtainStyledAttributes.getString(i15);
            typedArrayObtainStyledAttributes.getBoolean(14, false);
            d.k(context, typedArrayObtainStyledAttributes, 6);
            typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(R.style.TextAppearance_MaterialComponents_Badge, x5.a.H);
            typedArrayObtainStyledAttributes2.hasValue(0);
            typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes2.recycle();
            this.f11666b.f4624c = Integer.valueOf(colorStateListK.getDefaultColor());
        }
        BadgeState$State badgeState$State7 = this.f11666b;
        Integer num3 = badgeState$State2.f4630k;
        badgeState$State7.f4630k = Integer.valueOf(num3 == null ? typedArrayJ.getInt(1, 8388661) : num3.intValue());
        BadgeState$State badgeState$State8 = this.f11666b;
        Integer num4 = badgeState$State2.f4632m;
        badgeState$State8.f4632m = Integer.valueOf(num4 == null ? typedArrayJ.getDimensionPixelOffset(6, 0) : num4.intValue());
        this.f11666b.f4633n = Integer.valueOf(badgeState$State2.f4632m == null ? typedArrayJ.getDimensionPixelOffset(10, 0) : badgeState$State2.f4633n.intValue());
        BadgeState$State badgeState$State9 = this.f11666b;
        Integer num5 = badgeState$State2.f4634o;
        badgeState$State9.f4634o = Integer.valueOf(num5 == null ? typedArrayJ.getDimensionPixelOffset(7, badgeState$State9.f4632m.intValue()) : num5.intValue());
        BadgeState$State badgeState$State10 = this.f11666b;
        Integer num6 = badgeState$State2.f4635p;
        badgeState$State10.f4635p = Integer.valueOf(num6 == null ? typedArrayJ.getDimensionPixelOffset(11, badgeState$State10.f4633n.intValue()) : num6.intValue());
        BadgeState$State badgeState$State11 = this.f11666b;
        Integer num7 = badgeState$State2.f4636q;
        badgeState$State11.f4636q = Integer.valueOf(num7 == null ? 0 : num7.intValue());
        BadgeState$State badgeState$State12 = this.f11666b;
        Integer num8 = badgeState$State2.f4637r;
        badgeState$State12.f4637r = Integer.valueOf(num8 != null ? num8.intValue() : 0);
        typedArrayJ.recycle();
        Locale locale = badgeState$State2.f4626g;
        if (locale == null) {
            this.f11666b.f4626g = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.FORMAT) : Locale.getDefault();
        } else {
            this.f11666b.f4626g = locale;
        }
        this.f11665a = badgeState$State2;
    }
}
