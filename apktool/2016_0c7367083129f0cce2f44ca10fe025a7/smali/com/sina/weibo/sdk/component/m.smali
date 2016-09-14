.class final Lcom/sina/weibo/sdk/component/m;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/m;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/m;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/m;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/e;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/m;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/e;->a(Landroid/app/Activity;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/m;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 238
    return-void
.end method
