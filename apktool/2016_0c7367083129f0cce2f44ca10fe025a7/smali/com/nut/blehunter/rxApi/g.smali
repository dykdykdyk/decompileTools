.class final Lcom/nut/blehunter/rxApi/g;
.super Ljava/lang/Object;
.source "HandleErrorHelper.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/g;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/nut/blehunter/rxApi/g;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/nut/blehunter/rxApi/g;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method
