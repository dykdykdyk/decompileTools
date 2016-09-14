.class final Lcom/nut/blehunter/ui/bg;
.super Landroid/webkit/WebViewClient;
.source "JumpWebViewActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/JumpWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/ui/JumpWebViewActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nut/blehunter/ui/bg;->a:Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/ui/JumpWebViewActivity;B)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/bg;-><init>(Lcom/nut/blehunter/ui/JumpWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/nut/blehunter/ui/bg;->a:Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a(Lcom/nut/blehunter/ui/JumpWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 136
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
