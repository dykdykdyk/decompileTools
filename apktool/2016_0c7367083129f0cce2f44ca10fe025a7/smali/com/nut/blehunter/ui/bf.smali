.class final Lcom/nut/blehunter/ui/bf;
.super Lcom/nut/blehunter/rxApi/j;
.source "InputPhoneNumberActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/nut/blehunter/ui/bf;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nut/blehunter/ui/bf;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 207
    iget-object v0, p0, Lcom/nut/blehunter/ui/bf;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/bf;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nut/blehunter/ui/bf;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 199
    iget-object v0, p0, Lcom/nut/blehunter/ui/bf;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/nut/blehunter/ui/bf;->a:Lcom/nut/blehunter/ui/InputPhoneNumberActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/InputPhoneNumberActivity;->a(Lcom/nut/blehunter/ui/InputPhoneNumberActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 202
    :cond_0
    return-void
.end method
