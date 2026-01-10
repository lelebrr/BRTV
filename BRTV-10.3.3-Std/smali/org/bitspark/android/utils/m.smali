.class public abstract Lorg/bitspark/android/utils/m;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field public static b:Z

.field public static final c:Ljava/lang/StringBuilder;

.field public static final d:Ljava/util/Formatter;

.field public static final e:Lorg/bitspark/android/utils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/bitspark/android/utils/m;->c:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    new-instance v1, Ljava/util/Formatter;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 17
    .line 18
    sput-object v1, Lorg/bitspark/android/utils/m;->d:Ljava/util/Formatter;

    .line 19
    .line 20
    new-instance v0, Lorg/bitspark/android/utils/c;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Lorg/bitspark/android/utils/c;-><init>()V

    .line 24
    .line 25
    sput-object v0, Lorg/bitspark/android/utils/m;->e:Lorg/bitspark/android/utils/c;

    .line 26
    return-void
.end method

.method public static native a(Ljava/lang/Long;)Ljava/lang/String;
.end method

.method public static native b(J)Ljava/lang/String;
.end method

.method public static native c(J)J
.end method

.method public static native d(Ljava/lang/String;)Lokhttp3/OkHttpClient;
.end method

.method public static native e(Ljava/lang/String;Z)Ljava/lang/Boolean;
.end method

.method public static native f(ILjava/lang/String;)Ljava/lang/Integer;
.end method

.method public static native g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native h(Ljava/lang/Long;)Ljava/lang/String;
.end method

.method public static native i(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native j(Ljava/lang/Long;)J
.end method

.method public static native k()V
.end method

.method public static native l(Ljava/lang/String;)V
.end method

.method public static native m(ILjava/lang/String;)V
.end method

.method public static native n(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native o(Ljava/lang/String;Ljava/util/HashSet;)V
.end method

.method public static native p(Landroid/content/Context;)Ljava/lang/Boolean;
.end method

.method public static native q(J)Ljava/lang/String;
.end method
