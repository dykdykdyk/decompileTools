.class public final Lcom/nut/blehunter/ui/b/a/r;
.super Landroid/app/DialogFragment;
.source "NotDisturbTimeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/nut/blehunter/ui/b/a/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 106
    return-void
.end method

.method public static a()Lcom/nut/blehunter/ui/b/a/r;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/nut/blehunter/ui/b/a/r;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/r;-><init>()V

    .line 35
    const/4 v1, 0x2

    const v2, 0x7f0800d5

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/r;->setStyle(II)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    check-cast p1, Lcom/nut/blehunter/ui/b/a/s;

    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/r;->a:Lcom/nut/blehunter/ui/b/a/s;

    .line 43
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/r;->dismissAllowingStateLoss()V

    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/r;->a:Lcom/nut/blehunter/ui/b/a/s;

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/b/a/s;->c(I)V

    .line 104
    :cond_0
    return-void

    .line 86
    :pswitch_0
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 90
    :pswitch_1
    const/4 v0, 0x2

    .line 91
    goto :goto_0

    .line 94
    :pswitch_2
    const/4 v0, 0x3

    .line 95
    goto :goto_0

    .line 98
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0186
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 61
    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 62
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 63
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/r;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    const v1, 0x7f0d0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0d0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0d0188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0d0189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object v0
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 48
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/r;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/r;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method
