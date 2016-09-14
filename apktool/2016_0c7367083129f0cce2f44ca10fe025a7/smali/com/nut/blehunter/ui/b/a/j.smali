.class public final Lcom/nut/blehunter/ui/b/a/j;
.super Lcom/nut/blehunter/ui/b/a/a;
.source "InputTextDialogFragment.java"


# instance fields
.field public f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    .line 25
    const/16 v0, 0x14

    iput v0, p0, Lcom/nut/blehunter/ui/b/a/j;->g:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/j;
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x14

    invoke-static {p0, p1, p2, v0}, Lcom/nut/blehunter/ui/b/a/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;I)Lcom/nut/blehunter/ui/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/d;I)Lcom/nut/blehunter/ui/b/a/j;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 34
    new-instance v1, Lcom/nut/blehunter/ui/b/a/j;

    invoke-direct {v1}, Lcom/nut/blehunter/ui/b/a/j;-><init>()V

    .line 36
    new-instance v2, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/b/a/b;->b(Z)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v3

    instance-of v0, p2, Lcom/nut/blehunter/ui/SilenceAddOrEditActivity;

    if-eqz v0, :cond_0

    const v0, 0x7f0600e9

    :goto_0
    invoke-virtual {v3, v0}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030060

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v3, 0x7f060085

    invoke-virtual {v0, v3, p2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    move-result-object v0

    const v3, 0x7f060083

    invoke-virtual {v0, v3, v5}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 45
    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/j;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "limit"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/a/j;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1

    .line 37
    :cond_0
    const v0, 0x7f060163

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/j;->h:Landroid/widget/EditText;

    .line 70
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 75
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 77
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/j;->dismissAllowingStateLoss()V

    .line 99
    :goto_1
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f06013e

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->c(Landroid/content/Context;I)V

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/d/r;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/nut/blehunter/ui/b/a/j;->g:I

    if-le v0, v1, :cond_2

    .line 89
    const v0, 0x7f0601ef

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/nut/blehunter/ui/b/a/j;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/nut/blehunter/ui/b/a/j;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1047
    const v2, 0x7f02026c

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/j;->a:Lcom/nut/blehunter/ui/b/a/b;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a/b;->i:Lcom/nut/blehunter/ui/b/a/d;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/d;->a(Landroid/support/v4/app/DialogFragment;I)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f0d017a
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "limit"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/b/a/j;->g:I

    .line 60
    return-void
.end method
