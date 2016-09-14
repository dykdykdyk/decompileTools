.class final Lcom/sina/weibo/sdk/component/a/b;
.super Ljava/lang/Object;
.source "LoadingBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/a/a;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/a/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/a/b;->a:Lcom/sina/weibo/sdk/component/a/a;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a/b;->a:Lcom/sina/weibo/sdk/component/a/a;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/a/a;->a(Lcom/sina/weibo/sdk/component/a/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/a/a;->a(Lcom/sina/weibo/sdk/component/a/a;I)V

    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/a/b;->a:Lcom/sina/weibo/sdk/component/a/a;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/a/b;->a:Lcom/sina/weibo/sdk/component/a/a;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/a/a;->a(Lcom/sina/weibo/sdk/component/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/a/a;->a(I)V

    .line 66
    return-void
.end method
