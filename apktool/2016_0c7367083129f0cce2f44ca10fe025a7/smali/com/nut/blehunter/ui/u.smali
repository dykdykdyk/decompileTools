.class final Lcom/nut/blehunter/ui/u;
.super Lcom/nut/blehunter/rxApi/j;
.source "BindPhoneActivity.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/nut/blehunter/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindPhoneActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iput-boolean p2, p0, Lcom/nut/blehunter/ui/u;->a:Z

    iput-object p3, p0, Lcom/nut/blehunter/ui/u;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nut/blehunter/ui/u;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/nut/blehunter/ui/u;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)V

    .line 491
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 481
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/u;->a:Z

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/u;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/u;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/nut/blehunter/ui/u;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->e(Lcom/nut/blehunter/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/BindPhoneActivity;->f(Lcom/nut/blehunter/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/u;->e:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v3}, Lcom/nut/blehunter/ui/BindPhoneActivity;->g(Lcom/nut/blehunter/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nut/blehunter/ui/u;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/nut/blehunter/ui/u;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/nut/blehunter/ui/u;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
