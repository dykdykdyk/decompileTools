.class final Lcom/nut/blehunter/ui/b/a/o;
.super Landroid/support/v7/widget/dx;
.source "MapChooseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/dx",
        "<",
        "Lcom/nut/blehunter/ui/b/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final synthetic d:Lcom/nut/blehunter/ui/b/a/n;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/b/a/n;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/nut/blehunter/ui/b/a/o;->c:Landroid/content/Context;

    .line 128
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a/o;->e:Landroid/view/LayoutInflater;

    .line 129
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 4

    .prologue
    .line 120
    .line 2133
    new-instance v0, Lcom/nut/blehunter/ui/b/a/p;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a/o;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030091

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/p;-><init>(Lcom/nut/blehunter/ui/b/a/o;Landroid/view/View;)V

    .line 120
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/ex;I)V
    .locals 3

    .prologue
    .line 120
    check-cast p1, Lcom/nut/blehunter/ui/b/a/p;

    .line 1139
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/n;->a(Lcom/nut/blehunter/ui/b/a/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1140
    iget-object v1, p1, Lcom/nut/blehunter/ui/b/a/p;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a/o;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    iget-object v1, p1, Lcom/nut/blehunter/ui/b/a/p;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a/o;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/n;->a(Lcom/nut/blehunter/ui/b/a/n;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/o;->d:Lcom/nut/blehunter/ui/b/a/n;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/n;->a(Lcom/nut/blehunter/ui/b/a/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
