.class public Lcom/nut/blehunter/ui/JumpWebViewActivity;
.super Lcom/nut/blehunter/ui/b;
.source "JumpWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/JumpWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f0d00c9
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a(I)V

    .line 39
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    sget-object v1, Lcom/nut/blehunter/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a(I)V

    .line 56
    :cond_2
    :goto_1
    const v0, 0x7f0d00cd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    .line 57
    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->b:Landroid/widget/ProgressBar;

    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 59
    new-instance v0, Lcom/umeng/analytics/d;

    iget-object v1, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/umeng/analytics/d;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v1, "Accept-Language"

    invoke-static {p0}, Lcom/nut/blehunter/d/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/nut/blehunter/ui/bg;

    invoke-direct {v1, p0, v3}, Lcom/nut/blehunter/ui/bg;-><init>(Lcom/nut/blehunter/ui/JumpWebViewActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 70
    :cond_3
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    goto/16 :goto_0

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    sget-object v1, Lcom/nut/blehunter/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    const v0, 0x7f060118

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a(I)V

    goto/16 :goto_1

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    sget-object v1, Lcom/nut/blehunter/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    const v0, 0x7f0601ee

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a(I)V

    goto/16 :goto_1

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    sget-object v1, Lcom/nut/blehunter/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    const v0, 0x7f06018c

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a(I)V

    goto/16 :goto_1

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/nut/blehunter/ui/JumpWebViewActivity;->c:Ljava/lang/String;

    sget-object v1, Lcom/nut/blehunter/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/JumpWebViewActivity;->a(I)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onPause()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onResume()V

    .line 100
    return-void
.end method
