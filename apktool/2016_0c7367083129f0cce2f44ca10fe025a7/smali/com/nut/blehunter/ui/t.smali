.class final Lcom/nut/blehunter/ui/t;
.super Lcom/nut/blehunter/rxApi/j;
.source "BindPhoneActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindPhoneActivity;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/nut/blehunter/ui/t;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/nut/blehunter/ui/t;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)V

    .line 466
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/nut/blehunter/ui/t;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 459
    iget-object v0, p0, Lcom/nut/blehunter/ui/t;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;)I

    .line 460
    iget-object v0, p0, Lcom/nut/blehunter/ui/t;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/t;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->b(Lcom/nut/blehunter/ui/BindPhoneActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;I)V

    .line 461
    return-void
.end method
