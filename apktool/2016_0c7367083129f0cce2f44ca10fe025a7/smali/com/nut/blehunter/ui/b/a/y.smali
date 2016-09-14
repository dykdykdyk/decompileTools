.class public final Lcom/nut/blehunter/ui/b/a/y;
.super Landroid/app/DialogFragment;
.source "PickPhotoDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/nut/blehunter/ui/b/a/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 96
    return-void
.end method

.method public static a()Lcom/nut/blehunter/ui/b/a/y;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/nut/blehunter/ui/b/a/y;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/y;-><init>()V

    .line 31
    const/4 v1, 0x2

    const v2, 0x7f0800d5

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/y;->setStyle(II)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 38
    check-cast p1, Lcom/nut/blehunter/ui/b/a/z;

    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/y;->a:Lcom/nut/blehunter/ui/b/a/z;

    .line 39
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/y;->dismissAllowingStateLoss()V

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/y;->a:Lcom/nut/blehunter/ui/b/a/z;

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/b/a/z;->c(I)V

    .line 94
    :cond_0
    return-void

    .line 84
    :pswitch_0
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d018d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 57
    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 58
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 59
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/y;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    const v1, 0x7f0d018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f0d018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0d018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v0
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 44
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/y;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/y;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method
