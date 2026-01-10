.class public Lorg/bitspark/android/beans/ChannelBean$SourcesBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/ChannelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourcesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/ChannelBean$SourcesBean$SubtitlesBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x159026a8c057e4c7L


# instance fields
.field private address:Ljava/lang/String;

.field private bType:I

.field private duration:F

.field private id:I

.field private kbps:I

.field private mediaType:Ljava/lang/String;

.field private qc:I

.field private qs:I

.field private subTitle:Ljava/lang/String;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean$SubtitlesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

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

.method public static synthetic access$000(Lorg/bitspark/android/beans/ChannelBean$SourcesBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->subTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public native getAddress()Ljava/lang/String;
.end method

.method public native getBType()I
.end method

.method public native getDuration()F
.end method

.method public native getId()I
.end method

.method public native getKbps()I
.end method

.method public native getMediaType()Ljava/lang/String;
.end method

.method public native getQc()I
.end method

.method public native getQs()I
.end method

.method public native getSubTitle()Ljava/lang/String;
.end method

.method public native getSubtitles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean$SubtitlesBean;",
            ">;"
        }
    .end annotation
.end method

.method public native setAddress(Ljava/lang/String;)V
.end method

.method public native setBType(I)V
.end method

.method public native setDuration(F)V
.end method

.method public native setId(I)V
.end method

.method public native setKbps(I)V
.end method

.method public native setMediaType(Ljava/lang/String;)V
.end method

.method public native setQc(I)V
.end method

.method public native setQs(I)V
.end method

.method public native setSubTitle(Ljava/lang/String;)V
.end method

.method public native setSubtitles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$SourcesBean$SubtitlesBean;",
            ">;)V"
        }
    .end annotation
.end method
