.class public final Lcom/nut/blehunter/ui/b/a/g;
.super Lcom/nut/blehunter/ui/b/a/x;
.source "DeleteNutDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/a/x;-><init>()V

    return-void
.end method

.method public static a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/g;
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/nut/blehunter/ui/b/a/g;

    invoke-direct {v0}, Lcom/nut/blehunter/ui/b/a/g;-><init>()V

    .line 1239
    iget-object v1, p2, Lcom/nut/blehunter/ui/b/a/b;->a:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 20
    invoke-virtual {v0, p2}, Lcom/nut/blehunter/ui/b/a/g;->a(Lcom/nut/blehunter/ui/b/a/b;)V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v2, "nut"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/g;->setArguments(Landroid/os/Bundle;)V

    .line 26
    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f02005c

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 32
    return-void
.end method
