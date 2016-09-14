.class final Lcom/nut/blehunter/ui/dy;
.super Landroid/webkit/WebViewClient;
.source "NotificationCenterActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NotificationCenterActivity;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/ui/NotificationCenterActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/nut/blehunter/ui/dy;->a:Lcom/nut/blehunter/ui/NotificationCenterActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/ui/NotificationCenterActivity;B)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/dy;-><init>(Lcom/nut/blehunter/ui/NotificationCenterActivity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/nut/blehunter/ui/dy;->a:Lcom/nut/blehunter/ui/NotificationCenterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a(Lcom/nut/blehunter/ui/NotificationCenterActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/nut/blehunter/ui/dy;->a:Lcom/nut/blehunter/ui/NotificationCenterActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dy;->a:Lcom/nut/blehunter/ui/NotificationCenterActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->b(Lcom/nut/blehunter/ui/NotificationCenterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a(Lcom/nut/blehunter/ui/NotificationCenterActivity;Z)V

    .line 297
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 306
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 307
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/nut/blehunter/ui/dy;->a:Lcom/nut/blehunter/ui/NotificationCenterActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/dy;->a:Lcom/nut/blehunter/ui/NotificationCenterActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->b(Lcom/nut/blehunter/ui/NotificationCenterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a(Lcom/nut/blehunter/ui/NotificationCenterActivity;Z)V

    .line 302
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
