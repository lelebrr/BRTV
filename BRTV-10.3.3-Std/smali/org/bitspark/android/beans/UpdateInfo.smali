.class public Lorg/bitspark/android/beans/UpdateInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/UpdateInfo$ScBean;,
        Lorg/bitspark/android/beans/UpdateInfo$ReleaseBean;
    }
.end annotation


# instance fields
.field public code:I

.field public description:Ljava/lang/String;

.field public incompatibleVersion:I

.field public info:Ljava/lang/String;

.field public mkbrokers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public release:Lorg/bitspark/android/beans/UpdateInfo$ReleaseBean;

.field public sc:Lorg/bitspark/android/beans/UpdateInfo$ScBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
