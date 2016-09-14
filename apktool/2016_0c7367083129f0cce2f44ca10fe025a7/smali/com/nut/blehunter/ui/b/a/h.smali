.class public final Lcom/nut/blehunter/ui/b/a/h;
.super Landroid/support/v4/app/DialogFragment;
.source "DownloadProcessDialogFragment.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/nut/blehunter/ui/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 32
    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 33
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/h;->a:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/h;->a:Landroid/widget/TextView;

    const v2, 0x7f0600b1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "0%"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/nut/blehunter/ui/b/a/h;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0800d4

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 37
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 39
    return-object v0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 45
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/h;->b:Lcom/nut/blehunter/ui/b/a/e;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/h;->b:Lcom/nut/blehunter/ui/b/a/e;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/a/e;->c_()V

    .line 48
    :cond_0
    return-void
.end method
