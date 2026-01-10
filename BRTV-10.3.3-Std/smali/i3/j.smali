.class public abstract Li3/j;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lv2/g;

.field public static final b:Lv2/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lv2/a;->c:Lv2/a;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lv2/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv2/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Li3/j;->a:Lv2/g;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lv2/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lv2/g;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Li3/j;->b:Lv2/g;

    .line 20
    .line 21
    return-void
.end method
