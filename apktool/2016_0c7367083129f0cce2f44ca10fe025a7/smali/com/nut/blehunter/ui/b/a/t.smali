.class public final Lcom/nut/blehunter/ui/b/a/t;
.super Landroid/app/DialogFragment;
.source "NotificationShareDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/nut/blehunter/ui/b/a/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 108
    return-void
.end method

.method public static a()Lcom/nut/blehunter/ui/b/a/t;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/nut/blehunter/ui/b/a/t;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/t;-><init>()V

    .line 36
    const/4 v1, 0x2

    const v2, 0x7f0800d5

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/t;->setStyle(II)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    check-cast p1, Lcom/nut/blehunter/ui/b/a/u;

    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/t;->a:Lcom/nut/blehunter/ui/b/a/u;

    .line 44
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/t;->dismissAllowingStateLoss()V

    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 103
    :goto_0
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/t;->a:Lcom/nut/blehunter/ui/b/a/u;

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/b/a/u;->c(I)V

    .line 106
    :cond_0
    return-void

    .line 88
    :sswitch_0
    const/4 v0, 0x1

    .line 89
    goto :goto_0

    .line 92
    :sswitch_1
    const/4 v0, 0x2

    .line 93
    goto :goto_0

    .line 96
    :sswitch_2
    const/4 v0, 0x3

    .line 97
    goto :goto_0

    .line 100
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0180 -> :sswitch_0
        0x7f0d018a -> :sswitch_1
        0x7f0d018b -> :sswitch_2
        0x7f0d018c -> :sswitch_3
    .end sparse-switch
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 62
    const v2, 0x7f0800d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 63
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 64
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    const v1, 0x7f0d0180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0d018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f0d018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0d018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-object v0
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 49
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/t;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/t;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method
