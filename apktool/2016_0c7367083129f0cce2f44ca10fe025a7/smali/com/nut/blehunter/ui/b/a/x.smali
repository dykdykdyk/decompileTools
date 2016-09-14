.class public Lcom/nut/blehunter/ui/b/a/x;
.super Lcom/nut/blehunter/ui/b/a/a;
.source "NutImageDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/a;-><init>()V

    return-void
.end method

.method public static b(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/x;
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcom/nut/blehunter/ui/b/a/x;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/x;-><init>()V

    .line 1239
    iget-object v1, p2, Lcom/nut/blehunter/ui/b/a/b;->a:Landroid/content/Context;

    .line 22
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 23
    invoke-virtual {v0, p2}, Lcom/nut/blehunter/ui/b/a/x;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v2, "nut"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/x;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/x;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nut"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 35
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/x;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    const v1, 0x7f0d017b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/ui/widget/CircleImageView;

    .line 38
    const v2, 0x7f0d017c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {v1, v0}, Lcom/nut/blehunter/t;->a(Landroid/widget/ImageView;Lcom/nut/blehunter/entity/Nut;)V

    .line 41
    iget v0, v0, Lcom/nut/blehunter/entity/Nut;->K:I

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/x;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a/x;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
