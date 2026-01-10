.class public final Lb7/f;
.super Lb7/h;
.source "MyApplication"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lb7/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb7/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lb7/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb7/f;->a:Lb7/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
