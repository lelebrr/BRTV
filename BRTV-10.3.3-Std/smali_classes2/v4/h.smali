.class public abstract Lv4/h;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ly4/d;

.field public static final b:Ly4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly4/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv4/h;->a:Ly4/d;

    .line 7
    .line 8
    new-instance v0, Ly4/d;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lv4/h;->b:Ly4/d;

    .line 14
    .line 15
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    sget-object v0, Lv4/a;->a:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    return-void
.end method
