.class final Lcom/sina/weibo/sdk/c/d;
.super Ljava/lang/Object;
.source "LogReport.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "uploadtime"

    sput-object v0, Lcom/sina/weibo/sdk/c/d;->b:Ljava/lang/String;

    .line 51
    const-string v0, "https://api.weibo.com/2/proxy/sdk/statistic.json"

    sput-object v0, Lcom/sina/weibo/sdk/c/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/sina/weibo/sdk/c/d;->a:Ljava/lang/String;

    return-object v0
.end method
