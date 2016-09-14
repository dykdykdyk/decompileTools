.class public Lcom/nut/blehunter/ui/b/a/a;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/nut/blehunter/ui/b/a/b;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/Button;

.field protected e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 313
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 55
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 57
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method protected a(Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public final a(Lcom/nut/blehunter/ui/b/a/b;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    .line 208
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b/a/a;->setShowsDialog(Z)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/a;->dismissAllowingStateLoss()V

    .line 154
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->k:Lcom/nut/blehunter/ui/b/a/e;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->k:Lcom/nut/blehunter/ui/b/a/e;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/a/e;->c_()V

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/d;->a(Landroid/support/v4/app/DialogFragment;I)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->j:Lcom/nut/blehunter/ui/b/a/d;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->j:Lcom/nut/blehunter/ui/b/a/d;

    const/4 v1, -0x2

    invoke-interface {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/d;->a(Landroid/support/v4/app/DialogFragment;I)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f0d0179
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 134
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-boolean v1, v1, Lcom/nut/blehunter/ui/b/a/b;->h:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 79
    const v0, 0x7f03005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 81
    const v0, 0x7f0d0176

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->b:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0d0178

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->c:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0d0177

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 85
    const v1, 0x7f0d017a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->d:Landroid/widget/Button;

    .line 86
    const v1, 0x7f0d0179

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->e:Landroid/widget/Button;

    .line 88
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 127
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a/b;->f:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 98
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 99
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a/b;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_1

    .line 101
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v3, v3, Lcom/nut/blehunter/ui/b/a/b;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a/b;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/view/View;)V

    .line 109
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    :goto_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    :goto_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-boolean v0, v0, Lcom/nut/blehunter/ui/b/a/b;->g:Z

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b/a/a;->setCancelable(Z)V

    move-object v0, v2

    .line 127
    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v3, v3, Lcom/nut/blehunter/ui/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/widget/Button;)V

    goto :goto_3

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/a;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 182
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 183
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 146
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->k:Lcom/nut/blehunter/ui/b/a/e;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/a;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->k:Lcom/nut/blehunter/ui/b/a/e;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/a/e;->c_()V

    .line 149
    :cond_0
    return-void
.end method
