.class public final Lorg/bitspark/android/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final c:Ljava/nio/charset/Charset;


# instance fields
.field public volatile a:Lorg/bitspark/android/utils/d;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    .line 1
    .line 2
    const-string v0, "8k2A1gI=\n"

    .line 3
    .line 4
    const-string v1, "pxnG+zqDX+Y=\n"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lorg/bitspark/android/utils/e;->c:Ljava/nio/charset/Charset;

    .line 15
    return-void
.end method

.method public static native b(Lokhttp3/MediaType;)Z
.end method


# virtual methods
.method public final native a(Lokhttp3/Request;)V
.end method

.method public final native c(Ljava/lang/String;)V
.end method

.method public final native d(Lorg/bitspark/android/utils/d;)V
.end method

.method public final native intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end method
