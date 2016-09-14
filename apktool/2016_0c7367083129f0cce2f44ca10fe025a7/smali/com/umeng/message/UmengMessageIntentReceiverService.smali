.class public Lcom/umeng/message/UmengMessageIntentReceiverService;
.super Lorg/android/agoo/b/d;
.source "UmengMessageIntentReceiverService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/android/agoo/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getPushIntentServiceClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
