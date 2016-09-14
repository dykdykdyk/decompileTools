.class final Lcom/nut/blehunter/ui/fb;
.super Ljava/lang/Object;
.source "ResetPasswordActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/nut/blehunter/ui/fb;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nut/blehunter/ui/fb;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->setResult(I)V

    .line 360
    iget-object v0, p0, Lcom/nut/blehunter/ui/fb;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->finish()V

    .line 361
    return-void
.end method
