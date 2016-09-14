.class public Lcom/sina/weibo/sdk/exception/WeiboAuthException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboAuthException.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->a:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->b:Ljava/lang/String;

    .line 64
    return-void
.end method
