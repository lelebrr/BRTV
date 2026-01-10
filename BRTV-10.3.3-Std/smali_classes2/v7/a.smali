.class public abstract Lv7/a;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:S

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-short v0, p0, Lv7/a;->a:S

    .line 6
    .line 7
    iput v0, p0, Lv7/a;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lv7/a;->c:I

    .line 11
    .line 12
    iput v0, p0, Lv7/a;->d:I

    .line 13
    .line 14
    return-void
.end method
