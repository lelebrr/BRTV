package ea;

import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.LocaleList;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.UUID;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static String f6600b;

    /* renamed from: c, reason: collision with root package name */
    public static String f6601c;
    public static int d;

    /* renamed from: e, reason: collision with root package name */
    public static int f6602e;
    public static int f;

    /* renamed from: g, reason: collision with root package name */
    public static String f6603g;

    /* renamed from: h, reason: collision with root package name */
    public static String f6604h;

    /* renamed from: i, reason: collision with root package name */
    public static int f6605i;

    /* renamed from: j, reason: collision with root package name */
    public static int f6606j;

    /* renamed from: k, reason: collision with root package name */
    public static float f6607k;

    /* renamed from: l, reason: collision with root package name */
    public static String f6608l;

    /* renamed from: m, reason: collision with root package name */
    public static String f6609m;

    /* renamed from: n, reason: collision with root package name */
    public static f f6610n;

    /* renamed from: o, reason: collision with root package name */
    public static String f6611o;

    /* renamed from: p, reason: collision with root package name */
    public static String f6612p;

    /* renamed from: q, reason: collision with root package name */
    public static final String f6613q;

    /* renamed from: r, reason: collision with root package name */
    public static final String f6614r;

    /* renamed from: a, reason: collision with root package name */
    public final Spark f6615a;

    static {
        a2.a.s("VeMT4Q==\n", "F7BQh/El3b8=\n");
        f6600b = a2.a.s("9UWLZHH3GMDxGY0kZvUW2/4=\n", "mjfsSgKHebI=\n");
        a2.a.s("ne/VEWE=\n", "+IGKRDJK58g=\n");
        f6601c = "";
        d = 0;
        f6602e = 1;
        f = 1500000;
        f6603g = "";
        f6604h = "";
        f6610n = f.f6646b;
        f6611o = "";
        f6612p = "";
        f6613q = a2.a.s("OSlwee35voQnIQ==\n", "V0YHKYGYx8E=\n");
        f6614r = a2.a.s("YCsYmzPvnelLPgc=\n", "Dk5g72OD/JA=\n");
        a2.a.s("Vi0KskMqog==\n", "NUVr3C1Pzo4=\n");
    }

    public a(Spark spark) throws IOException, NumberFormatException {
        String strS;
        int i6;
        String upperCase;
        this.f6615a = spark;
        String strS2 = a2.a.s("R/gFyQ==\n", "BatGr1n72+M=\n");
        String strS3 = a2.a.s("qDnm7NTGvEnMRYGKtbO3PKt8pKOEgw==\n", "ixrFz/fm8AY=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS2, strS3);
        Log.i(a2.a.s("4IFWXw==\n", "otIVObXwZQ4=\n"), a2.a.s("Sq3+D9KPBPAA4rlvnsEg7A6gm2Cw+QnXU66ffqX5\n", "aY7dLPGvRoU=\n"));
        Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
        f6611o = locale.getLanguage();
        f6612p = locale.getCountry();
        Log.i(a2.a.s("R4NwHg==\n", "BdAzeOwX//Q=\n"), a2.a.s("Nbb2b2y+CbV48qAtKPtf9A==\n", "FpXVTE+eZdQ=\n") + f6611o + a2.a.s("qg==\n", "9f4TQ94wM14=\n") + f6612p);
        Log.i(a2.a.s("xQYYgw==\n", "h1Vb5W/+JBs=\n"), a2.a.s("yRnKKH0e2CjPKe9+OQ==\n", "i2yjRBkwlWc=\n") + Build.MODEL + a2.a.s("O+R/g1xwDNBU51iuCjQ=\n", "G6YK6jAUIpI=\n") + Build.BOARD);
        f6600b = spark.getPackageName().toString();
        Log.i(a2.a.s("/rXkDg==\n", "vOanaP65FMs=\n"), a2.a.s("xRnjJEeU9/zUFeVy\n", "tXiATybzkrI=\n") + f6600b);
        if (org.bitspark.android.utils.a.f8757a == null) {
            synchronized (org.bitspark.android.utils.a.class) {
                try {
                    if (org.bitspark.android.utils.a.f8757a == null) {
                        SharedPreferences sharedPreferences = spark.getSharedPreferences(a2.a.s("hAG+8m2FRmSESrD2Yg==\n", "4GTImw7gGQ0=\n"), 0);
                        String string = sharedPreferences.getString(a2.a.s("OcNk5NrgqOY5\n", "XaYSjbmF948=\n"), null);
                        if (string != null) {
                            org.bitspark.android.utils.a.f8757a = UUID.fromString(string);
                        } else {
                            String string2 = Settings.Secure.getString(spark.getContentResolver(), a2.a.s("Dl2V1RmdlF4GVw==\n", "bzPxp3b08AE=\n"));
                            if (a2.a.s("mKhRCMQIk/aXp1RZlQmc8Q==\n", "oZ9mPKA9pZI=\n").equals(string2)) {
                                String deviceId = ((TelephonyManager) spark.getSystemService(a2.a.s("pndo3gM=\n", "1h8HsGbzQl4=\n"))).getDeviceId();
                                org.bitspark.android.utils.a.f8757a = deviceId != null ? UUID.nameUUIDFromBytes(deviceId.getBytes(a2.a.s("nyMqyQ==\n", "6ldM8d98wGA=\n"))) : UUID.randomUUID();
                            } else {
                                org.bitspark.android.utils.a.f8757a = UUID.nameUUIDFromBytes(string2.getBytes(a2.a.s("a9k/SA==\n", "Hq1ZcAW+bLM=\n")));
                            }
                            sharedPreferences.edit().putString(a2.a.s("1AuKkdRUgPPU\n", "sG78+Lcx35o=\n"), org.bitspark.android.utils.a.f8757a.toString()).commit();
                        }
                    }
                } catch (UnsupportedEncodingException e5) {
                    throw new RuntimeException(e5);
                } finally {
                }
            }
        }
        Log.i(a2.a.s("z9cCzA==\n", "jYRBqq0+3Rk=\n"), a2.a.s("t0jARTo=\n", "wj2pIQeDj/M=\n") + org.bitspark.android.utils.a.f8757a.toString());
        try {
            f6603g = spark.getPackageManager().getPackageInfo(f6600b, 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        Log.i(a2.a.s("n0fLIg==\n", "3RSIREedCUU=\n"), a2.a.s("Un+W/MnGCEpaYIjt3s4fBA==\n", "Mw/mo7+jejk=\n") + f6603g);
        try {
            f6602e = this.f6615a.getPackageManager().getPackageInfo(f6600b, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
        }
        Log.i(a2.a.s("iWq+Bg==\n", "yzn9YBslFmw=\n"), a2.a.s("FqunFuZqYu4etLkK/2t1oA==\n", "d9vXSZAPEJ0=\n") + f6602e);
        f6608l = this.f6615a.getString(R.string.app_name);
        String strL = r4.b.l(spark);
        String strS4 = a2.a.s("LWZIz+aiVEIYYlnv4q4cZBg5Z9niq1kiSWUJif38WUsCclvD56NZLx8tCYn9/FkvHz8=\n", "bBYprI7HeQo=\n");
        String str = Build.VERSION.RELEASE;
        f6609m = String.format(strS4, f6608l, f6603g, str, Build.MODEL, strL);
        Log.i(a2.a.s("UksY/A==\n", "EBhbmuSjY6c=\n"), a2.a.s("+Stc2pYL+sn4Yhk=\n", "jFg5qNdsn6c=\n") + f6609m);
        DisplayMetrics displayMetrics = Spark.Z1;
        f6605i = displayMetrics.widthPixels;
        f6606j = displayMetrics.heightPixels;
        f6607k = displayMetrics.density;
        Log.i(a2.a.s("8tvE4Q==\n", "sIiHh7CuEGU=\n"), a2.a.s("TFjVH8gC\n", "OzGxa6A/1+8=\n") + f6605i);
        Log.i(a2.a.s("R2y2UA==\n", "BT/1NtkhmgI=\n"), a2.a.s("Co146cw46w==\n", "YugRjqRM1hc=\n") + f6606j);
        Log.i(a2.a.s("q7IpUw==\n", "6eFqNQ8mzYk=\n"), a2.a.s("eHVxLOUhCho=\n", "HBAfX4xVcyc=\n") + f6607k);
        if (Locale.getDefault().getLanguage().indexOf(a2.a.s("oSs=\n", "20NTIseclVs=\n")) != -1) {
            a2.a.s("KSKakLU=\n", "U0rF0/uy/ms=\n");
        }
        f6601c = str;
        Log.i(a2.a.s("B+LtXw==\n", "RbGuOetB22A=\n"), a2.a.s("HfPKPlZR1QgB5IQ=\n", "boq5aDMjpmE=\n") + f6601c);
        d = Build.VERSION.SDK_INT;
        Log.i(a2.a.s("wjH3NA==\n", "gGK0UiHLiJ4=\n"), a2.a.s("2vrdXs4b0LjN5pM=\n", "qYOuCKtpk9c=\n") + d);
        try {
            InputStream inputStream = new ProcessBuilder(a2.a.s("BaLXleufQf5IuMDJ/JtY\n", "KtGu5p/6LNE=\n"), a2.a.s("f2k1vQBbDbo5eSm9AEwRvyR/IeFMTx3jM2o5/gBcGLk2aCm/AFwYuTl0KqFwUgm0D3w+q14=\n", "UBpMzi8/aMw=\n")).start().getInputStream();
            byte[] bArr = new byte[24];
            strS = "";
            while (inputStream.read(bArr) != -1) {
                strS = strS + new String(bArr);
            }
            inputStream.close();
        } catch (IOException e12) {
            e12.printStackTrace();
            strS = a2.a.s("ysL0\n", "hO212FHSX8A=\n");
        }
        try {
            i6 = Integer.parseInt(strS.trim());
        } catch (NumberFormatException unused) {
            i6 = 0;
        }
        if (i6 > 0) {
            f = Runtime.getRuntime().availableProcessors() * i6;
        } else {
            f = Runtime.getRuntime().availableProcessors() * f;
        }
        Log.i(a2.a.s("Dx8N3A==\n", "TUxOunQ1L54=\n"), a2.a.s("akl0Thls\n", "BygMDV9RtmQ=\n") + f);
        WifiInfo connectionInfo = ((WifiManager) spark.getSystemService(a2.a.s("uMp80w==\n", "z6MaulUJIVg=\n"))).getConnectionInfo();
        if (connectionInfo == null || connectionInfo.getMacAddress() == null) {
            upperCase = "";
            try {
                String strS5 = a2.a.s("t6pL8I+jO7Prqh3txbR4t+yxAqzBpDOg/apB\n", "mNkyg6DAV9I=\n");
                StringBuffer stringBuffer = new StringBuffer(1000);
                BufferedReader bufferedReader = new BufferedReader(new FileReader(strS5));
                char[] cArr = new char[1024];
                while (true) {
                    int i10 = bufferedReader.read(cArr);
                    if (i10 == -1) {
                        break;
                    } else {
                        stringBuffer.append(String.valueOf(cArr, 0, i10));
                    }
                }
                bufferedReader.close();
                String string3 = stringBuffer.toString();
                if (string3.length() == 17) {
                    upperCase = string3.toUpperCase();
                }
            } catch (IOException e13) {
                e13.printStackTrace();
            }
            Log.i(a2.a.s("ykfkmw==\n", "iBSn/eLfIDg=\n"), a2.a.s("t0nsYK48ONnoHQ==\n", "0j2EUI5RWbo=\n") + upperCase);
        } else {
            upperCase = connectionInfo.getMacAddress();
            Log.i(a2.a.s("O2FtIA==\n", "eTIuRm2V73w=\n"), a2.a.s("OkYD8DSfO0B3Dw==\n", "TS9lmRTyWiM=\n") + upperCase);
        }
        Log.i(a2.a.s("wENzKQ==\n", "ghAwT4om9yA=\n"), a2.a.s("GDbwqRZ0nmQ=\n", "a0KC5Fc3pEQ=\n") + upperCase);
        if (!upperCase.equals("") && upperCase.length() == 17) {
            String str2 = upperCase.substring(0, 2) + upperCase.substring(3, 5) + upperCase.substring(6, 8) + upperCase.substring(9, 11) + upperCase.substring(12, 14) + upperCase.substring(15, 17);
            f6604h = str2;
            f6604h = str2.toUpperCase();
            Log.i(a2.a.s("Dy219A==\n", "TX72klhaEuQ=\n"), a2.a.s("NO/exuja2mgq/Yen\n", "WY69h4y+qA0=\n") + f6604h);
        }
        String str3 = Build.MANUFACTURER;
        Log.i(a2.a.s("s4t5EA==\n", "8dg6dkbf+M4=\n"), a2.a.s("CvDa0frd+FwS49HWppw=\n", "Z5G0pJy8myg=\n") + str3);
        int iIntValue = org.bitspark.android.utils.m.f(-1, a2.a.s("noGhwuoBQdaJkbHE9wE=\n", "yM7lnadEBZ8=\n")).intValue();
        if ((str3.toLowerCase().equals(a2.a.s("D3I1x7Hp\n", "ZwdUsNSAWEU=\n")) || str3.toLowerCase().equals(a2.a.s("axJbn8Ng\n", "DH00+K8FSnQ=\n"))) && iIntValue == -1) {
            org.bitspark.android.utils.m.m(1, a2.a.s("JaBWDhUo6aYysEYICCg=\n", "c+8SUVhtre8=\n"));
        }
        int iIntValue2 = org.bitspark.android.utils.m.f(-1, a2.a.s("48sT0Tq26F302wPXJ7Y=\n", "tYRXjnfzrBQ=\n")).intValue();
        if (iIntValue2 == 1) {
            f6610n = f.f6646b;
            Log.i(a2.a.s("8HAk5A==\n", "siNngm59EAo=\n"), a2.a.s("UDmUE7W4ERV1J5k+rqkXRAABpg==\n", "IFX1atfZcn4=\n"));
        } else if (iIntValue2 == 0) {
            f6610n = f.f6645a;
            Log.i(a2.a.s("MepOdQ==\n", "c7kNE//70gM=\n"), a2.a.s("OP+sVzlxaysd4aF6ImBtemjHng==\n", "SJPNLlsQCEA=\n"));
        }
    }
}
