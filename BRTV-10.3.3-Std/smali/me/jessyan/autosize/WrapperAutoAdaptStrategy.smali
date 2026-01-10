.class public Lme/jessyan/autosize/WrapperAutoAdaptStrategy;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lme/jessyan/autosize/AutoAdaptStrategy;


# instance fields
.field private final mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;


# direct methods
.method public constructor <init>(Lme/jessyan/autosize/AutoAdaptStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lme/jessyan/autosize/WrapperAutoAdaptStrategy;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getOnAdaptListener()Lme/jessyan/autosize/onAdaptListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lme/jessyan/autosize/onAdaptListener;->onAdaptBefore(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lme/jessyan/autosize/WrapperAutoAdaptStrategy;->mAutoAdaptStrategy:Lme/jessyan/autosize/AutoAdaptStrategy;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Lme/jessyan/autosize/AutoAdaptStrategy;->applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lme/jessyan/autosize/onAdaptListener;->onAdaptAfter(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method
