.class public Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/ChannelBean$LogoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x159026a8c057e4c2L


# instance fields
.field private big:Ljava/lang/String;

.field private small:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

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
.method public native getBig()Ljava/lang/String;
.end method

.method public native getSmall()Ljava/lang/String;
.end method

.method public native setBig(Ljava/lang/String;)V
.end method

.method public native setSmall(Ljava/lang/String;)V
.end method
