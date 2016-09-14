.class public final Lcom/nut/blehunter/d/o;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1039
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 20
    const v1, 0x7f0300af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 21
    const v0, 0x7f0d0232

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 22
    const v1, 0x7f0d0233

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 23
    if-lez p1, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :cond_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 29
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 31
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1047
    const v1, 0x7f02026c

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1055
    const v1, 0x7f02026d

    invoke-static {p0, v1, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 52
    return-void
.end method
