.class public final Lorg/bitspark/android/utils/q;
.super Ljava/lang/Object;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lokhttp3/OkHttpClient;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "oAS7oWOIYw==\n"

    .line 2
    .line 3
    const-string v1, "91f81AL6B24=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/bitspark/android/utils/q;->d:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "qmduRRjR2w==\n"

    .line 5
    .line 6
    const-string v1, "3RQJMHmjv1U=\n"

    .line 7
    .line 8
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lorg/bitspark/android/utils/m;->d(Ljava/lang/String;)Lokhttp3/OkHttpClient;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/bitspark/android/utils/q;->b:Lokhttp3/OkHttpClient;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/bitspark/android/utils/q;->a:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method
