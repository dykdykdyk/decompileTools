.class public final Lcom/umeng/message/proguard/bg;
.super Ljava/lang/Object;
.source "ChannelUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/umeng/message/proguard/bg;->a:Ljava/lang/String;

    .line 24
    const-string v0, "Huawei"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/bg;->b:Ljava/lang/String;

    .line 25
    const-string v0, "Xiaomi"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/bg;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/umeng/message/proguard/bg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    if-eqz p0, :cond_0

    sget-object v0, Lcom/umeng/message/proguard/bg;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/umeng/message/proguard/bh;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/bh;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/message/proguard/v;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/umeng/message/proguard/bg;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/umeng/message/proguard/bg;->c:Ljava/lang/String;

    return-object v0
.end method
