.class public Lcom/sina/weibo/sdk/exception/WeiboDialogException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboDialogException.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 44
    iput p2, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->a:I

    .line 45
    iput-object p3, p0, Lcom/sina/weibo/sdk/exception/WeiboDialogException;->b:Ljava/lang/String;

    .line 46
    return-void
.end method
