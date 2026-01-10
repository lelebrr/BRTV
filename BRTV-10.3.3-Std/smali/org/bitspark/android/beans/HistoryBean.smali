.class public Lorg/bitspark/android/beans/HistoryBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79366bdd164b35f0L


# instance fields
.field public address:Ljava/lang/String;

.field public chid:I

.field public date:Ljava/util/Date;

.field public duration:I

.field public lastPosition:J

.field public name:Ljava/lang/String;

.field public subId:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public type:Lorg/bitspark/android/Constants$VIDEO_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/bitspark/android/beans/HistoryBean;->duration:I

    .line 6
    .line 7
    return-void
.end method
