.class public final Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "MobclickAgentJSInterface.java"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 35
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    new-instance v0, Lcom/umeng/analytics/e;

    invoke-direct {v0, p0, p3}, Lcom/umeng/analytics/e;-><init>(Lcom/umeng/analytics/d;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    return-void
.end method
