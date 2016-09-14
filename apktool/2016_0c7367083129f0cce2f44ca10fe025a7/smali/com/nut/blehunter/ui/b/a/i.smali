.class public final Lcom/nut/blehunter/ui/b/a/i;
.super Lcom/nut/blehunter/ui/b/a/a;
.source "ForceUpgradeDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/i;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/i;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/d;->a(Landroid/support/v4/app/DialogFragment;I)V

    goto :goto_0

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/i;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->j:Lcom/nut/blehunter/ui/b/a/d;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/i;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->j:Lcom/nut/blehunter/ui/b/a/d;

    const/4 v1, -0x2

    invoke-interface {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/d;->a(Landroid/support/v4/app/DialogFragment;I)V

    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch 0x7f0d0179
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
