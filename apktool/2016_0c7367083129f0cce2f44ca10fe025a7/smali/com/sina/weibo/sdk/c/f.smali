.class Lcom/sina/weibo/sdk/c/f;
.super Ljava/lang/Object;
.source "PageLog.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J


# instance fields
.field protected c:Lcom/sina/weibo/sdk/c/e;

.field protected d:Ljava/lang/String;

.field protected e:J

.field f:J

.field g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "session"

    sput-object v0, Lcom/sina/weibo/sdk/c/f;->a:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/sina/weibo/sdk/c/f;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sina/weibo/sdk/c/f;->d:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/weibo/sdk/c/f;->e:J

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lcom/sina/weibo/sdk/c/e;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/c/f;->c:Lcom/sina/weibo/sdk/c/e;

    return-object v0
.end method

.method public final a(Lcom/sina/weibo/sdk/c/e;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sina/weibo/sdk/c/f;->c:Lcom/sina/weibo/sdk/c/e;

    .line 77
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/c/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/sina/weibo/sdk/c/f;->e:J

    return-wide v0
.end method
