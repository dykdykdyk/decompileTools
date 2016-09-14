.class public Lcom/sina/weibo/sdk/a/a/d;
.super Ljava/lang/Object;
.source "WebAuthHandler.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/sina/weibo/sdk/a/a;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sina/weibo/sdk/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/a/a/d;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sina/weibo/sdk/a/a;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/a/d;->c:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/weibo/sdk/a/c;)V
    .locals 4

    .prologue
    .line 63
    .line 1086
    if-eqz p1, :cond_1

    .line 1090
    new-instance v0, Lcom/sina/weibo/sdk/net/k;

    iget-object v1, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 2036
    iget-object v1, v1, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    .line 1090
    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/net/k;-><init>(Ljava/lang/String;)V

    .line 1091
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 3036
    iget-object v2, v2, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    .line 1091
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 3040
    iget-object v2, v2, Lcom/sina/weibo/sdk/a/a;->b:Ljava/lang/String;

    .line 1092
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v1, "scope"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 3044
    iget-object v2, v2, Lcom/sina/weibo/sdk/a/a;->c:Ljava/lang/String;

    .line 1093
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v1, "response_type"

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v1, p0, Lcom/sina/weibo/sdk/a/a/d;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 4036
    iget-object v2, v2, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    .line 1101
    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/p;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    const-string v2, "aid"

    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_0
    const-string v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 4048
    iget-object v2, v2, Lcom/sina/weibo/sdk/a/a;->d:Ljava/lang/String;

    .line 1108
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 4052
    iget-object v2, v2, Lcom/sina/weibo/sdk/a/a;->e:Ljava/lang/String;

    .line 1109
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://open.weibo.cn/oauth2/authorize?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a/d;->c:Landroid/content/Context;

    .line 5052
    if-eqz v0, :cond_2

    .line 5053
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1113
    :goto_0
    if-nez v0, :cond_3

    .line 1114
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a/d;->c:Landroid/content/Context;

    const-string v1, "Error"

    const-string v2, "Application requires permission to access the Internet"

    .line 6040
    if-eqz v0, :cond_1

    .line 6041
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6042
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6043
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6044
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6045
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1115
    :cond_1
    :goto_1
    return-void

    .line 5057
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1118
    :cond_3
    new-instance v0, Lcom/sina/weibo/sdk/component/a;

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sina/weibo/sdk/component/a;-><init>(Landroid/content/Context;)V

    .line 1119
    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 6067
    iput-object v2, v0, Lcom/sina/weibo/sdk/component/a;->a:Lcom/sina/weibo/sdk/a/a;

    .line 6079
    iput-object p1, v0, Lcom/sina/weibo/sdk/component/a;->b:Lcom/sina/weibo/sdk/a/c;

    .line 1121
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/a;->a(Ljava/lang/String;)V

    .line 1122
    const-string v1, "\u5fae\u535a\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/a;->b(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/a;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 1125
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/d;->c:Landroid/content/Context;

    const-class v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1126
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1127
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a/d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
