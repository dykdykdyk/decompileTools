.class public abstract Lcom/sina/weibo/sdk/api/a/b;
.super Lcom/sina/weibo/sdk/api/a/a;
.source "BaseRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    const-string v0, "_weibo_command_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v0, "_weibo_transaction"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method abstract a(Lcom/sina/weibo/sdk/c;)Z
.end method
