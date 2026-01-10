package androidx.media3.common.util;

import android.graphics.Color;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ColorParser {
    private static final Map<String, Integer> COLOR_MAP;
    private static final String RGB = "rgb";
    private static final String RGBA = "rgba";
    private static final Pattern RGB_PATTERN = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_INT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    private static final Pattern RGBA_PATTERN_FLOAT_ALPHA = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    static {
        HashMap map = new HashMap();
        COLOR_MAP = map;
        a.e.z(-984833, map, "aliceblue", -332841, "antiquewhite");
        map.put("aqua", -16711681);
        map.put("aquamarine", -8388652);
        a.e.z(-983041, map, "azure", -657956, "beige");
        a.e.z(-6972, map, "bisque", -16777216, "black");
        a.e.z(-5171, map, "blanchedalmond", -16776961, "blue");
        a.e.z(-7722014, map, "blueviolet", -5952982, "brown");
        a.e.z(-2180985, map, "burlywood", -10510688, "cadetblue");
        a.e.z(-8388864, map, "chartreuse", -2987746, "chocolate");
        a.e.z(-32944, map, "coral", -10185235, "cornflowerblue");
        a.e.z(-1828, map, "cornsilk", -2354116, "crimson");
        map.put("cyan", -16711681);
        map.put("darkblue", -16777077);
        a.e.z(-16741493, map, "darkcyan", -4684277, "darkgoldenrod");
        map.put("darkgray", -5658199);
        map.put("darkgreen", -16751616);
        map.put("darkgrey", -5658199);
        map.put("darkkhaki", -4343957);
        a.e.z(-7667573, map, "darkmagenta", -11179217, "darkolivegreen");
        a.e.z(-29696, map, "darkorange", -6737204, "darkorchid");
        a.e.z(-7667712, map, "darkred", -1468806, "darksalmon");
        a.e.z(-7357297, map, "darkseagreen", -12042869, "darkslateblue");
        map.put("darkslategray", -13676721);
        map.put("darkslategrey", -13676721);
        map.put("darkturquoise", -16724271);
        map.put("darkviolet", -7077677);
        a.e.z(-60269, map, "deeppink", -16728065, "deepskyblue");
        map.put("dimgray", -9868951);
        map.put("dimgrey", -9868951);
        map.put("dodgerblue", -14774017);
        map.put("firebrick", -5103070);
        a.e.z(-1296, map, "floralwhite", -14513374, "forestgreen");
        map.put("fuchsia", -65281);
        map.put("gainsboro", -2302756);
        a.e.z(-460545, map, "ghostwhite", -10496, "gold");
        map.put("goldenrod", -2448096);
        map.put("gray", -8355712);
        a.e.z(-16744448, map, "green", -5374161, "greenyellow");
        map.put("grey", -8355712);
        map.put("honeydew", -983056);
        a.e.z(-38476, map, "hotpink", -3318692, "indianred");
        a.e.z(-11861886, map, "indigo", -16, "ivory");
        a.e.z(-989556, map, "khaki", -1644806, "lavender");
        a.e.z(-3851, map, "lavenderblush", -8586240, "lawngreen");
        a.e.z(-1331, map, "lemonchiffon", -5383962, "lightblue");
        a.e.z(-1015680, map, "lightcoral", -2031617, "lightcyan");
        map.put("lightgoldenrodyellow", -329006);
        map.put("lightgray", -2894893);
        map.put("lightgreen", -7278960);
        map.put("lightgrey", -2894893);
        a.e.z(-18751, map, "lightpink", -24454, "lightsalmon");
        a.e.z(-14634326, map, "lightseagreen", -7876870, "lightskyblue");
        map.put("lightslategray", -8943463);
        map.put("lightslategrey", -8943463);
        map.put("lightsteelblue", -5192482);
        map.put("lightyellow", -32);
        a.e.z(-16711936, map, "lime", -13447886, "limegreen");
        map.put("linen", -331546);
        map.put("magenta", -65281);
        a.e.z(-8388608, map, "maroon", -10039894, "mediumaquamarine");
        a.e.z(-16777011, map, "mediumblue", -4565549, "mediumorchid");
        a.e.z(-7114533, map, "mediumpurple", -12799119, "mediumseagreen");
        a.e.z(-8689426, map, "mediumslateblue", -16713062, "mediumspringgreen");
        a.e.z(-12004916, map, "mediumturquoise", -3730043, "mediumvioletred");
        a.e.z(-15132304, map, "midnightblue", -655366, "mintcream");
        a.e.z(-6943, map, "mistyrose", -6987, "moccasin");
        a.e.z(-8531, map, "navajowhite", -16777088, "navy");
        a.e.z(-133658, map, "oldlace", -8355840, "olive");
        a.e.z(-9728477, map, "olivedrab", -23296, "orange");
        a.e.z(-47872, map, "orangered", -2461482, "orchid");
        a.e.z(-1120086, map, "palegoldenrod", -6751336, "palegreen");
        a.e.z(-5247250, map, "paleturquoise", -2396013, "palevioletred");
        a.e.z(-4139, map, "papayawhip", -9543, "peachpuff");
        a.e.z(-3308225, map, "peru", -16181, "pink");
        a.e.z(-2252579, map, "plum", -5185306, "powderblue");
        a.e.z(-8388480, map, "purple", -10079335, "rebeccapurple");
        a.e.z(-65536, map, "red", -4419697, "rosybrown");
        a.e.z(-12490271, map, "royalblue", -7650029, "saddlebrown");
        a.e.z(-360334, map, "salmon", -744352, "sandybrown");
        a.e.z(-13726889, map, "seagreen", -2578, "seashell");
        a.e.z(-6270419, map, "sienna", -4144960, "silver");
        a.e.z(-7876885, map, "skyblue", -9807155, "slateblue");
        map.put("slategray", -9404272);
        map.put("slategrey", -9404272);
        map.put("snow", -1286);
        map.put("springgreen", -16711809);
        a.e.z(-12156236, map, "steelblue", -2968436, "tan");
        a.e.z(-16744320, map, "teal", -2572328, "thistle");
        a.e.z(-40121, map, "tomato", 0, "transparent");
        a.e.z(-12525360, map, "turquoise", -1146130, "violet");
        a.e.z(-663885, map, "wheat", -1, "white");
        a.e.z(-657931, map, "whitesmoke", -256, "yellow");
        map.put("yellowgreen", -6632142);
    }

    private ColorParser() {
    }

    private static int parseColorInternal(String str, boolean z7) {
        Assertions.checkArgument(!TextUtils.isEmpty(str));
        String strReplace = str.replace(" ", "");
        if (strReplace.charAt(0) == '#') {
            int i6 = (int) Long.parseLong(strReplace.substring(1), 16);
            if (strReplace.length() == 7) {
                return (-16777216) | i6;
            }
            if (strReplace.length() == 9) {
                return ((i6 & 255) << 24) | (i6 >>> 8);
            }
            throw new IllegalArgumentException();
        }
        if (strReplace.startsWith(RGBA)) {
            Matcher matcher = (z7 ? RGBA_PATTERN_FLOAT_ALPHA : RGBA_PATTERN_INT_ALPHA).matcher(strReplace);
            if (matcher.matches()) {
                return Color.argb(z7 ? (int) (Float.parseFloat((String) Assertions.checkNotNull(matcher.group(4))) * 255.0f) : Integer.parseInt((String) Assertions.checkNotNull(matcher.group(4)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(3)), 10));
            }
        } else if (strReplace.startsWith(RGB)) {
            Matcher matcher2 = RGB_PATTERN.matcher(strReplace);
            if (matcher2.matches()) {
                return Color.rgb(Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(1)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(2)), 10), Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(3)), 10));
            }
        } else {
            Integer num = COLOR_MAP.get(b7.b.v(strReplace));
            if (num != null) {
                return num.intValue();
            }
        }
        throw new IllegalArgumentException();
    }

    public static int parseCssColor(String str) {
        return parseColorInternal(str, true);
    }

    public static int parseTtmlColor(String str) {
        return parseColorInternal(str, false);
    }
}
