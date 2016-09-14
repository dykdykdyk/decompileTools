.class final Lcom/nut/blehunter/ui/q;
.super Lcom/nut/blehunter/rxApi/j;
.source "BindEmailActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ui/BindEmailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindEmailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/nut/blehunter/ui/q;->b:Lcom/nut/blehunter/ui/BindEmailActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/nut/blehunter/ui/q;->b:Lcom/nut/blehunter/ui/BindEmailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 232
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 234
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    const/4 v2, 0x1

    iput v2, v1, Lcom/nut/blehunter/entity/Email;->b:I

    .line 235
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/entity/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 236
    iget-object v0, p0, Lcom/nut/blehunter/ui/q;->b:Lcom/nut/blehunter/ui/BindEmailActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/BindEmailActivity;->setResult(I)V

    .line 237
    iget-object v0, p0, Lcom/nut/blehunter/ui/q;->b:Lcom/nut/blehunter/ui/BindEmailActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->finish()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/q;->b:Lcom/nut/blehunter/ui/BindEmailActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nut/blehunter/ui/q;->b:Lcom/nut/blehunter/ui/BindEmailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 223
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/nut/blehunter/entity/Email;

    iget-object v2, p0, Lcom/nut/blehunter/ui/q;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nut/blehunter/entity/Email;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->c:Lcom/nut/blehunter/entity/Email;

    .line 225
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/entity/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 226
    iget-object v0, p0, Lcom/nut/blehunter/ui/q;->b:Lcom/nut/blehunter/ui/BindEmailActivity;

    .line 1246
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1247
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/BindEmailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1249
    const v2, 0x7f06008c

    new-instance v3, Lcom/nut/blehunter/ui/r;

    invoke-direct {v3, v0}, Lcom/nut/blehunter/ui/r;-><init>(Lcom/nut/blehunter/ui/BindEmailActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1257
    const v2, 0x7f0600e5

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/BindEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600b8

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/BindEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/nut/blehunter/ui/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;

    move-result-object v1

    .line 2060
    const-string v2, "baseDialog"

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 227
    return-void
.end method
