.class final Lcom/nut/blehunter/ui/s;
.super Lcom/nut/blehunter/rxApi/j;
.source "BindPhoneActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)V

    .line 444
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 432
    iget-object v0, p0, Lcom/nut/blehunter/ui/s;->a:Ljava/lang/String;

    const-string v1, "MODIFY_MOBILE_OLD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;)I

    .line 434
    iget-object v0, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->b(Lcom/nut/blehunter/ui/BindPhoneActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/BindPhoneActivity;->a(Lcom/nut/blehunter/ui/BindPhoneActivity;I)V

    .line 435
    iget-object v0, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->c(Lcom/nut/blehunter/ui/BindPhoneActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/s;->b:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->d(Lcom/nut/blehunter/ui/BindPhoneActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
