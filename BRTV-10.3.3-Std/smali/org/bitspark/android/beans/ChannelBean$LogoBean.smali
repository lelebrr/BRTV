.class public Lorg/bitspark/android/beans/ChannelBean$LogoBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/ChannelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogoBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22803ddac941239L


# instance fields
.field private id:I

.field private image:Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

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
.method public native getId()I
.end method

.method public native getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;
.end method

.method public native setId(I)V
.end method

.method public native setImage(Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;)V
.end method
