.class public Lorg/bitspark/android/beans/EpgBeans$EpgBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/EpgBeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpgBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x770a25e89c5d6bb8L


# instance fields
.field private endTime:Ljava/lang/Long;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private playbackUrl:Ljava/lang/String;

.field private time:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x39

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public native getEndTime()Ljava/lang/Long;
.end method

.method public native getId()Ljava/lang/String;
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getPlaybackUrl()Ljava/lang/String;
.end method

.method public native getTime()Ljava/lang/Long;
.end method

.method public native setEndTime(Ljava/lang/Long;)V
.end method

.method public native setId(Ljava/lang/String;)V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setPlaybackUrl(Ljava/lang/String;)V
.end method

.method public native setTime(Ljava/lang/Long;)V
.end method
