.class public Lcom/sina/weibo/sdk/exception/WeiboHttpException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboHttpException.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 40
    iput p2, p0, Lcom/sina/weibo/sdk/exception/WeiboHttpException;->a:I

    .line 41
    return-void
.end method
