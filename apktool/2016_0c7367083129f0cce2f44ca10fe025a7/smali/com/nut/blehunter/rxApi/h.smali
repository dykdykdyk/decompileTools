.class final Lcom/nut/blehunter/rxApi/h;
.super Ljava/lang/Object;
.source "HandleErrorHelper.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nut/blehunter/rxApi/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nut/blehunter/rxApi/h;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nut/blehunter/rxApi/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/rxApi/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/rxApi/h;->c:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/nut/blehunter/ui/SendMailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    const-string v1, "country"

    iget-object v2, p0, Lcom/nut/blehunter/rxApi/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v1, "mobile"

    iget-object v2, p0, Lcom/nut/blehunter/rxApi/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/nut/blehunter/rxApi/h;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
